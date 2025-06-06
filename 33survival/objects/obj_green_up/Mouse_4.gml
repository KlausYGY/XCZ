if global.exp_green >= (level * 5) {
	global.exp_green -= (level * 5);
	level += 1;
	exp_level = (level * 5);
	global.green_up_lv += 1;
	
	var _random_up = choose(1, 1, 1, 1, 2, 2, 3, 3, 3, 4, 5);
	if _random_up = 1 { 
		random_up_text_darw = irandom_range(1, 4);
		global.player_hp += random_up_text_darw; }//血量上限加成。
	if _random_up = 2 { 
		random_up_text_darw = choose(1, 1, 1, 1, 2,);
		global.player_hp_reply += random_up_text_darw; }//玩家自动回血加成。
	if _random_up = 3 { 
		random_up_text_darw = irandom_range(10, 30);
		global.exp_range += random_up_text_darw; }//经验值吸收距离加成。
	if _random_up = 4 { 
		random_up_text_darw = irandom_range(5, 15);
		global.invincible_time -= random_up_text_darw; }//闪避无敌时间加成。
	if _random_up = 5 { 
		random_up_text_darw = random_range(0.1 * global.defense, 0.3 * global.defense);
		global.defense -= random_up_text_darw; }//防御加成。
	
	//if instance_exists(obj_player_magic_0) { obj_player_magic_0.alarm[0] = 1;}//刷新武器状态。
	if instance_exists(oPlayer) { oPlayer.alarm[0] = 1;}//刷新角色状态。
	
	random_up_text = 0;
	random_up_text_mode = _random_up;
}