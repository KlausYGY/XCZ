if global.exp_red >= (level * 30) {
	global.exp_red -= (level * 30);
	level += 1;
	exp_level = (level * 30);
	
	var _random_up = choose(1,1);
	if _random_up = 1 { 
		random_up_text_darw = 1;
		global.shotgun += random_up_text_darw; 
		global.armor_piercing += 1;
		random_up_text_darw_1 = random_range(0.8, 2);
		global.attack_repel += random_up_text_darw_1; //击退加成。
	}//投射物速度加成。

	
	if instance_exists(obj_player_magic_0) { obj_player_magic_0.alarm[0] = 1;}//刷新武器状态。
	//if instance_exists(oPlayer) { oPlayer.alarm[0] = 1;}//刷新角色状态。
	
	random_up_text = 0;
	random_up_text_mode = _random_up;
}