/* Experimental USB-native Mac system actions for 66EC RGB BLE V1.5.1-F.1.
 * No shortcut synthesis, heap, or new global RAM. Stock codes delegate unchanged.
 * BLE consumer emission is only a UART observation, not module qualification.
 */
#include <stdint.h>

extern void niz_stock_usb_key_event(uint32_t pressed, uint32_t code);
extern void niz_stock_ble_key_event(uint32_t pressed, uint32_t code);
extern void delay_ms(uint32_t milliseconds);

typedef void (*send_fn)(const uint8_t *, uint32_t);
#define USB_SEND ((send_fn)(uintptr_t)0x0000aa19)
#define BLE_SEND ((send_fn)(uintptr_t)0x00006011)

/* Internal 222..230. Page is Consumer except DND (Generic Desktop). */
static const uint16_t consumer_usages[] = {
    0x029f, 0x02a0, 0x0221, 0x00cf, 0x0000,
    0x007a, 0x0079, 0x00b4, 0x00b3,
};

void niz_mac_usb_key_event(uint32_t pressed, uint32_t code)
{
    if (code < 222 || code > 230) {
        niz_stock_usb_key_event(pressed, code);
        return;
    }
    /* Keep the stock USB remote-wakeup sequence for new press events. */
    volatile uint32_t *attribute = (volatile uint32_t *)(uintptr_t)0x40060010;
    if (pressed && (*attribute & 2)) {
        *attribute |= 0x20;
        delay_ms(1);
        *attribute &= ~0x20u;
        delay_ms(50);
    }
    if (code == 227 || code == 228) {
        /* Apple TopCase illumination down/up. macOS recognition requires
         * the stock Mac-mode device identity and Apple vendor-driver support.
         */
        uint8_t report[2] = {6, pressed ? (code == 227 ? 1 : 2) : 0};
        *(volatile uint16_t *)(uintptr_t)0x2000034a = 40;
        USB_SEND(report, sizeof(report));
        return;
    }
    uint16_t usage = pressed ? (code == 226 ? 0x009b : consumer_usages[code - 222]) : 0;
    uint8_t report[3] = {code == 226 ? 5 : 1, (uint8_t)usage, (uint8_t)(usage >> 8)};
    *(volatile uint16_t *)(uintptr_t)0x2000034a = 40;
    USB_SEND(report, sizeof(report));
}

void niz_mac_ble_key_event(uint32_t pressed, uint32_t code)
{
    if (code < 222 || code > 230) {
        niz_stock_ble_key_event(pressed, code);
        return;
    }
    /* The external BLE module has no recovered DND report or descriptor.
     * Do not send a USB Report ID as an undocumented UART opcode.
     */
    if (code == 226) return;
    uint16_t usage = pressed ? consumer_usages[code - 222] : 0;
    uint8_t report[3] = {0xf1, (uint8_t)usage, (uint8_t)(usage >> 8)};
    BLE_SEND(report, sizeof(report));
}
