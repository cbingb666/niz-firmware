// Apply only documented hardware registers and explicitly recorded analyst names.
// @category NiZ
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.data.DWordDataType;
import ghidra.program.model.mem.MemoryBlock;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.SourceType;
import java.nio.file.*;
import java.util.ArrayList;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.FlowOverride;
import ghidra.program.model.pcode.JumpTable;
import ghidra.program.model.symbol.RefType;
import ghidra.program.model.symbol.Symbol;
import ghidra.app.cmd.function.CreateFunctionCmd;

public class AnnotateFirmware extends GhidraScript {
    private void block(String name, long start, long size) throws Exception {
        MemoryBlock b = currentProgram.getMemory().getBlock(toAddr(start));
        if (b == null) b = currentProgram.getMemory().createUninitializedBlock(name, toAddr(start), size, false);
        b.setRead(true); b.setWrite(true); b.setExecute(false); b.setVolatile(true);
    }
    public void run() throws Exception {
        Path root = Paths.get(getScriptArgs()[0]);
        block("APB", 0x40000000L, 0x200000L);
        block("AHB", 0x50000000L, 0x10000L);
        block("CORTEX_SYSTEM", 0xe000e000L, 0x2000L);
        // Remove an earlier export's double-added USBD_EP_T offset, before applying
        // the corrected map (header offsets already include the 0x500 endpoint bank).
        for (long a = 0x40060a00L; a < 0x40060a80L; a += 4) {
            for (Symbol symbol : currentProgram.getSymbolTable().getSymbols(toAddr(a)))
                if (symbol.getName().startsWith("USBD_EP")) symbol.delete();
            clearListing(toAddr(a), toAddr(a + 3));
        }
        // Tiny GPIO timing helpers preserve r3 in their actual machine code.
        // Inlining prevents an incorrect generic caller-clobbered-register assumption.
        for (long a : new long[] {0xbcfcL, 0xbd2cL})
            getFunctionAt(toAddr(a)).setInline(true);
        // ARMCC uses BL for two long branches inside the large key dispatcher.
        // These destinations consume the existing stack frame, not a new call frame.
        for (long a : new long[] {0x59f6L, 0x5a0eL})
            getInstructionAt(toAddr(a)).setFlowOverride(FlowOverride.BRANCH);
        for (long a : new long[] {0x4adeL, 0x5006L})
            currentProgram.getFunctionManager().removeFunction(toAddr(a));
        Function dispatcher = getFunctionAt(toAddr(0x4ab4L));
        if (dispatcher != null) CreateFunctionCmd.fixupFunctionBody(currentProgram, dispatcher, monitor);
        // ARMCC's inline byte-offset switch tables, with bounds checked immediately above.
        int[][] switches = {{0x2766, 15}, {0x30ae, 6}, {0xb4be, 5}};
        for (int[] entry : switches) {
            Address branch = toAddr(entry[0]);
            Instruction ins = getInstructionAt(branch);
            Function f = getFunctionContaining(branch);
            ArrayList<Address> destinations = new ArrayList<>();
            for (int i = 0; i < entry[1]; i++) {
                int offset = getByte(toAddr(entry[0] + 2 + i)) & 255;
                Address target = toAddr(entry[0] + 4 + offset * 2);
                disassemble(target);
                ins.addOperandReference(0, target, RefType.COMPUTED_JUMP, SourceType.USER_DEFINED);
                destinations.add(target);
            }
            new JumpTable(branch, destinations, true, 0).writeOverride(f);
            CreateFunctionCmd.fixupFunctionBody(currentProgram, f, monitor);
        }
        for (String line : Files.readAllLines(root.resolve("registers.tsv"))) {
            if (line.startsWith("address") || line.isBlank()) continue;
            String[] row = line.split("\t", -1);
            Address a = toAddr(Long.parseUnsignedLong(row[0], 16));
            if (getDataAt(a) == null) createData(a, new DWordDataType());
            createLabel(a, row[1], true);
        }
        for (String line : Files.readAllLines(root.resolve("functions.tsv"))) {
            if (line.startsWith("address") || line.isBlank()) continue;
            String[] row = line.split("\t", -1);
            Address a = toAddr(Long.parseUnsignedLong(row[0], 16));
            Function f = getFunctionAt(a);
            if (f == null) { disassemble(a); f = createFunction(a, null); }
            if (f != null) {
                f.setName(row[1], SourceType.USER_DEFINED);
                if (row.length > 2) f.setComment(row[2]);
            }
        }
        Path labels = root.resolve("labels.tsv");
        if (Files.exists(labels)) for (String line : Files.readAllLines(labels)) {
            if (line.startsWith("address") || line.isBlank()) continue;
            String[] row = line.split("\t", -1);
            Address a = toAddr(Long.parseUnsignedLong(row[0], 16));
            createLabel(a, row[1], true);
            if (row.length > 2) setPlateComment(a, row[2]);
        }
        analyzeAll(currentProgram);
        println("Applied documented register map and analyst annotations, and reanalyzed image.");
    }
}
