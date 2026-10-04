/* Address: 0x000049a8; body bytes: 22 */

/* Selects acquisition method according to RGB activity. */

void ec_timer_sample(void)

{
  if (rgb_active != '\0') {
    ec_sample_row_rgb();
    return;
  }
  ec_sample_column();
  return;
}

