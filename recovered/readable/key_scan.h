#ifndef NIZ_RECOVERED_KEY_SCAN_H
#define NIZ_RECOVERED_KEY_SCAN_H

#include <stdint.h>

/* Algorithm excerpt reconstructed from 0x00005e4c; not a complete firmware. */
enum { NIZ_ROWS = 11, NIZ_COLS = 6, NIZ_KEYS = 66 };

typedef struct {
    uint8_t baseline[NIZ_KEYS];       /* Original RAM: 0x20001b1c */
    uint8_t threshold[NIZ_KEYS];      /* Original RAM: 0x20001ba0 */
    uint8_t debounce[NIZ_KEYS];       /* Original RAM: 0x20001ada */
    uint16_t pressed[NIZ_ROWS];       /* Original RAM: 0x20001ac4 */
} niz_scan_state;

/* Caller supplies row 0..10 and six samples. Returns up to six event bytes.
 * Event bit 7 means pressed; bits 0..6 contain a physical key identifier.
 * The original firmware consumes 7-byte records from a RAM queue. This excerpt
 * exposes one record at a time and leaves queue management to the caller. */
unsigned niz_process_scan_record(niz_scan_state *state, unsigned row,
                                const uint8_t samples[NIZ_COLS],
                                unsigned rgb_active, uint8_t events[NIZ_COLS]);

extern const uint8_t niz_matrix_to_key[NIZ_KEYS];

#endif
