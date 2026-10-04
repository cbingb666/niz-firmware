// Initialize the Cortex-M image before automatic analysis.
// @category NiZ
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.data.DWordDataType;
import ghidra.program.model.mem.MemoryBlock;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.model.listing.Function;

public class PrepareFirmware extends GhidraScript {
    public void run() throws Exception {
        MemoryBlock flash = currentProgram.getMemory().getBlock(toAddr(0));
        flash.setName("APROM"); flash.setRead(true); flash.setWrite(false); flash.setExecute(true);
        MemoryBlock ram = currentProgram.getMemory().createUninitializedBlock(
            "SRAM", toAddr(0x20000000L), 0x5000, false);
        ram.setRead(true); ram.setWrite(true); ram.setExecute(false);
        String[] core = {"Initial_SP", "Reset", "NMI", "HardFault", "Reserved4", "Reserved5",
            "Reserved6", "Reserved7", "Reserved8", "Reserved9", "Reserved10", "SVC",
            "Reserved12", "Reserved13", "PendSV", "SysTick"};
        for (int i = 0; i < 48; i++) {
            Address slot = toAddr(i * 4);
            createData(slot, new DWordDataType());
            String name = i < 16 ? core[i] : "IRQ" + (i - 16);
            createLabel(slot, "Vector_" + name, true);
            long value = Integer.toUnsignedLong(getInt(slot));
            if (i == 0 || value == 0 || value >= flash.getSize()) continue;
            Address target = toAddr(value & ~1L);
            disassemble(target);
            Function f = getFunctionAt(target);
            if (f == null) f = createFunction(target, null);
            if (f != null && (value & ~1L) != 0x11a)
                f.setName(name + "_Handler", SourceType.USER_DEFINED);
        }
        Function defaultHandler = getFunctionAt(toAddr(0x11a));
        if (defaultHandler != null) defaultHandler.setName("Default_Handler", SourceType.USER_DEFINED);
        println("Prepared APROM, SRAM, and 48 vector entries; Thumb mode supplied by Cortex language.");
    }
}
