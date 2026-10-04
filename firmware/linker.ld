/* Original ROM layout is fixed so every literal, vector and callback keeps its address. */
ENTRY(Reset_Handler)
MEMORY {
    APROM (rx) : ORIGIN = 0x00000000, LENGTH = 0x11000
    SRAM (rwx) : ORIGIN = 0x20000000, LENGTH = 0x5000
}
SECTIONS {
    .rom 0x0 : {
        KEEP(*(.rom))
        __original_image_end = .;
        *(.text .text.*)
        *(.rodata .rodata.*)
        . = ALIGN(16);
        __image_end = .;
    } > APROM
    .unexpected_ram (NOLOAD) : {
        *(.data .data.* .bss .bss.* COMMON)
    } > SRAM
    /DISCARD/ : { *(.ARM.exidx* .ARM.extab* .comment .note*) }
}
ASSERT(SIZEOF(.unexpected_ram) == 0, "New RAM allocation requires updating the original startup layout")
ASSERT(__image_end <= 0xfffc, "Image exceeds the 64KB EEPROM staging area minus its four-byte header")
