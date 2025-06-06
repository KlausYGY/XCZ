if global.exp_red >= (level * 5) {
	global.exp_red -= (level * 5);
	level += 1;
	exp_level = (level * 5);
	global.red_up_lv += 1;
	
	var _random_up = choose(1,1,2,2,2,2,3,3,3,3);
	if _random_up = 1 { 
		random_up_text_darw = choose(1,1,1,1,2);
		global.armor_piercing += random_up_text_darw; }//投射物穿透加成。
	if _random_up = 2 { 
		random_up_text_darw = random_range(0.04, 0.1);
		global.attack_speed -= random_up_text_darw; }//攻速加成。
	if _random_up = 3 { 
		random_up_text_darw = random_range(0.05, 0.2);
		global.attack += random_up_text_darw; }//攻击力加成。
	
	if instance_exists(obj_player_magic_0) { obj_player_magic_0.alarm[0] = 1;}//刷新武器状态。
	//if instance_exists(oPlayer) { oPlayer.alarm[0] = 1;}//刷新角色状态。
	
	random_up_text = 0;
	random_up_text_mode = _random_up;
}