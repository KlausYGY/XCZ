if global.exp_red >= (global.boom_bullet * 30) {
	global.exp_red -= (global.boom_bullet * 30);
	global.boom_bullet += 1;

	if instance_exists(obj_player_magic_0) { obj_player_magic_0.alarm[0] = 1;}//刷新武器状态。
	//if instance_exists(oPlayer) { oPlayer.alarm[0] = 1;}//刷新角色状态。
	
	random_up_text = 0;
	random_up_text_mode = 1;
}