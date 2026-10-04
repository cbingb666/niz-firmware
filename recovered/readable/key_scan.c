#include "key_scan.h"

/* ROM 0x0000c47a, row-major matrix position -> physical key identifier. */
const uint8_t niz_matrix_to_key[NIZ_KEYS] = {
     1,  2,  3,  4,  5,  6, 16, 17, 18, 19, 20, 21,
    30, 31, 32, 33, 34, 35, 43, 44, 45, 46, 47, 48,
    12, 11, 10,  9,  8,  7, 27, 26, 25, 24, 23, 22,
    41, 40, 39, 38, 37, 36, 54, 53, 52, 51, 50, 49,
    56, 57, 58, 59, 60, 61, 65, 64, 63, 62, 55, 66,
    13, 14, 15, 28, 42, 29
};

unsigned niz_process_scan_record(niz_scan_state *state, unsigned row,
                                const uint8_t samples[NIZ_COLS],
                                unsigned rgb_active, uint8_t events[NIZ_COLS]) {
    unsigned delta[NIZ_COLS], total = 0, count = 0;
    unsigned base = row * NIZ_COLS;
    for (unsigned col = 0; col < NIZ_COLS; col++) {
        unsigned baseline = state->baseline[base + col];
        delta[col] = samples[col] > baseline ? samples[col] - baseline : 0;
        total += delta[col];
    }
    for (unsigned col = 0; col < NIZ_COLS; col++) {
        unsigned index = base + col;
        unsigned value = delta[col];
        /* Preserve the firmware's 8-bit intermediate and corrected sample. */
        uint8_t correction = (uint8_t)((total - value) * (rgb_active ? 18 : 5) / 100);
        if (value > 10) value = (uint8_t)(value + correction);
        uint16_t bit = (uint16_t)(1u << col);
        if (value < state->threshold[index]) {
            if (value < (uint8_t)(state->threshold[index] - 3)) {
                if ((state->pressed[row] & bit) == 0) {
                    state->debounce[index] = 0;
                } else if (++state->debounce[index] > 2) {
                    events[count++] = niz_matrix_to_key[index] & 0x7f;
                    state->pressed[row] &= (uint16_t)~bit;
                    state->debounce[index] = 0;
                }
            }
            /* Hysteresis band retains the existing debounce counter. */
        } else if ((state->pressed[row] & bit) == 0) {
            if (++state->debounce[index] > 2) {
                events[count++] = niz_matrix_to_key[index] | 0x80;
                state->pressed[row] |= bit;
                state->debounce[index] = 0;
            }
        } else {
            state->debounce[index] = 0;
        }
    }
    return count;
}
