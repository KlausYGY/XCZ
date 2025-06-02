//随机在玩家周围。
alarm[0] = irandom_range(60, 240);

if instance_exists(oPlayer) {
	harass_x = irandom_range(-240, 240);
	harass_y = irandom_range(-240, 240);
}