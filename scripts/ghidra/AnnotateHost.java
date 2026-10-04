// Name the transport routines behind the surviving DLL exports.
// @category NiZ
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.SourceType;

public class AnnotateHost extends GhidraScript {
    public void run() throws Exception {
        long[] addresses = {0x100014d0L, 0x10001860L, 0x10001a80L, 0x10001b70L,
            0x100039b0L, 0x10003b70L, 0x10004250L, 0x10004280L};
        String[] names = {"read_key_configuration_stream", "write_key_configuration_stream",
            "read_rgb_configuration_stream", "read_press_counter_stream",
            "send_firmware_text_records", "parse_firmware_record_hex",
            "hid_write_report", "hid_read_payload"};
        for (int i = 0; i < addresses.length; i++) {
            Function f = getFunctionAt(toAddr(addresses[i]));
            if (f != null) f.setName(names[i], SourceType.USER_DEFINED);
        }
    }
}
