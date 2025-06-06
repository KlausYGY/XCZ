if xx_lock = 0 {
	xx = lerp(xx, 1, 0.2);
}
if xx_lock = 1 {
	xx = lerp(xx, 1.2, 0.2);
}


if random_up_text < 180 { random_up_text ++; }
if random_up_text = 180 { random_up_text_mode = 0; }