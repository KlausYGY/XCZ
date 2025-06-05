if global.exp_blue >= (level * 5) {
	global.exp_blue -= (level * 5);
	level += 1;
	exp_level = (level * 5);
	global.blue_up_lv += 1;
	
	var _random_up = choose(1, 1, 1, 1, 2, 2, 2, 3, 3, 4, 5, 5, 5);
	if _random_up = 1 { 
		random_up_text_darw = random_range(0.1, 0.3);
		global.bullet_speed += random_up_text_darw; }//投射物速度加成。
	if _random_up = 2 { 
		random_up_text_darw = random_range(0.2, 0.3);
		global.player_speed += random_up_text_darw; }//玩家速度加成。
	if _random_up = 3 { 
		random_up_text_darw = random_range(0.4, 1);
		global.attack_repel += random_up_text_darw; }//击退加成。
	if _random_up = 4 { 
		random_up_text_darw = random_range(0.1, 0.2);
		global.attack_accuracy -= random_up_text_darw; }//精度加成。
	if _random_up = 5 { 
		random_up_text_darw = random_range(0.1, 0.2);
		global.attack_range += random_up_text_darw; }//攻击范围加成。
	
	if instance_exists(obj_player_magic_0) { obj_player_magic_0.alarm[0] = 1;}//刷新武器状态。
	if instance_exists(oPlayer) { oPlayer.alarm[0] = 1;}//刷新角色状态。
	
	random_up_text = 0;
	random_up_text_mode = _random_up;
}