if global.exp_red >= (level * 3) and instance_exists(obj_player_magic_0) {
	global.exp_red -= (level * 3);
	level += 1;
	exp_level = (level * 3);
	global.player_magic_0_lv += 1;
	obj_player_magic_0.alarm[0] = 1;
}