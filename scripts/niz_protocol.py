#!/usr/bin/env python3
"""Offline NiZ report codecs recovered from HWI.dll and the ARM firmware.

These functions construct/inspect bytes only. They never open a device.
"""
from enum import IntEnum


class Command(IntEnum):
    FIRMWARE_RECORD = 0x3A
    FACTORY_RESET = 0xD0
    SCAN_ENABLE = 0xD9
    RGB_DATA = 0xE0
    RGB_WRITE_BEGIN = 0xE1
    RGB_READ = 0xE2
    PRESS_COUNTER_READ = 0xE3
    RGB_WRITE_FINISH = 0xE6
    KEY_DEFINITION = 0xF0
    KEY_WRITE_BEGIN = 0xF1
    KEY_READ = 0xF2
    KEY_WRITE_FINISH = 0xF6
    VERSION_READ = 0xF9


def command_report(command: int, data: bytes = b"") -> bytes:
    """Windows WriteFile report: 0 report ID + 64-byte payload [00, cmd, data]."""
    if not 0 <= int(command) <= 255 or len(data) > 62:
        raise ValueError("invalid command or payload length")
    payload = bytes([0, int(command)]) + data
    return bytes([0]) + payload.ljust(64, b"\0")


def firmware_report(line: str) -> bytes:
    """A wrapper line is transferred intact: 00 00 3A length ciphertext padding."""
    if not line.startswith(":"):
        raise ValueError("missing record colon")
    wrapped = bytes.fromhex(line[1:])
    if not wrapped or len(wrapped) > 62:
        raise ValueError("invalid wrapped record size")
    return command_report(Command.FIRMWARE_RECORD, wrapped)


def normal_key_payload(group: int, key: int, codes: bytes) -> bytes:
    """One 64-byte key-definition payload (no Windows report ID).

    Groups 1..9, physical key IDs 1..66, definition type 0, one-byte code count.
    Internal NiZ codes are not identical to USB HID usages.
    """
    if not 1 <= group <= 9 or not 1 <= key <= 66 or len(codes) > 58:
        raise ValueError("invalid group, key, or code count")
    return (bytes([0, Command.KEY_DEFINITION, group, key, 0, len(codes)]) + codes).ljust(64, b"\0")


def uart_frame(data: bytes) -> bytes:
    """0x6010: UART frame, additive checksum, minimum wire length 10 bytes."""
    if not data or len(data) > 31:
        raise ValueError("data must fit the firmware's 32-byte UART staging buffer")
    length = max(10, len(data) + 1)
    frame = bytearray(length)
    frame[:len(data)] = data
    frame[-1] = sum(data) & 255
    return bytes(frame)


def parse_payload(payload: bytes) -> dict:
    if len(payload) != 64:
        raise ValueError("expected the 64-byte payload after removal of the report ID")
    command = payload[1]
    try:
        name = Command(command).name
    except ValueError:
        name = "UNKNOWN"
    return {"command": command, "name": name, "data_hex": payload[2:].hex()}
