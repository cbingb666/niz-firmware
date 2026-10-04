/* ARM-target reconstruction of the entire original scan-record processing entry.
 * Original entry: 0x5e4c. All existing RAM addresses and queue semantics remain.
 * Unlike the host algorithm excerpt, this function is linked into the firmware. */
#include <stdint.h>

#define BYTE_AT(a) (*(volatile uint8_t *)(uintptr_t)(a))
#define BYTES_AT(a) ((volatile uint8_t *)(uintptr_t)(a))
#define WORDS_AT(a) ((volatile uint16_t *)(uintptr_t)(a))

extern const uint8_t matrix_physical_key_ids[66];

void ec_process_scan_records_c(void) {
    if (BYTE_AT(0x20000376) == 0) return;
    uint8_t rgb_active = BYTE_AT(0x20000cba);
    for (uint8_t record = 0; record < BYTE_AT(0x20000376); record++) {
        volatile uint8_t *samples = BYTES_AT(0x2000310a) + (unsigned)record * 7;
        unsigned row = samples[0];
        unsigned total = 0;
        for (unsigned col = 0; col < 6; col++) {
            unsigned sample = samples[col + 1];
            unsigned baseline = BYTES_AT(0x20001b1c)[row * 6 + col];
            total += sample > baseline ? sample - baseline : 0;
        }
        row = samples[0];
        samples[0] = 0;
        for (unsigned col = 0; col < 6; col++) {
            unsigned index = row * 6 + col;
            unsigned sample = samples[col + 1];
            samples[col + 1] = 0;
            unsigned baseline = BYTES_AT(0x20001b1c)[index];
            unsigned value = sample > baseline ? sample - baseline : 0;
            int32_t numerator = ((int32_t)total - (int32_t)value) * (rgb_active ? 18 : 5);
            uint8_t correction = (uint8_t)(numerator / 100);
            if (value > 10) value = (uint8_t)(value + correction);
            uint16_t bit = (uint16_t)(1u << col);
            unsigned threshold = BYTES_AT(0x20001ba0)[index];
            unsigned reset_debounce = 0;
            unsigned emit = 0;
            uint8_t event = matrix_physical_key_ids[index];
            if (value < threshold) {
                if (value < (uint8_t)(threshold - 3)) {
                    if ((WORDS_AT(0x20001ac4)[row] & bit) == 0) {
                        reset_debounce = 1;
                    } else {
                        uint8_t count = BYTES_AT(0x20001ada)[index] + 1;
                        BYTES_AT(0x20001ada)[index] = count;
                        if (count > 2) {
                            event &= 0x7f;
                            emit = 1;
                            WORDS_AT(0x20001ac4)[row] &= (uint16_t)~bit;
                            reset_debounce = 1;
                        }
                    }
                }
            } else if ((WORDS_AT(0x20001ac4)[row] & bit) == 0) {
                uint8_t count = BYTES_AT(0x20001ada)[index] + 1;
                BYTES_AT(0x20001ada)[index] = count;
                if (count > 2) {
                    event |= 0x80;
                    emit = 1;
                    WORDS_AT(0x20001ac4)[row] |= bit;
                    reset_debounce = 1;
                }
            } else {
                reset_debounce = 1;
            }
            if (emit) {
                BYTES_AT(0x20000ee7)[BYTE_AT(0x20000360)] = event;
                BYTE_AT(0x20000360)++;
                BYTE_AT(0x20000321) = 1;
            }
            if (reset_debounce) BYTES_AT(0x20001ada)[index] = 0;
        }
    }
    BYTE_AT(0x20000376) = 0;
}
