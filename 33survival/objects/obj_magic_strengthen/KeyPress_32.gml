if global.level_time_lv = true and round(obj_level_progress.alarm[0] / 60) = 0 {
	global.level_time_lv = false;
	global.level_wave += 1;
	obj_level_progress.alarm[1] = 2;
	obj_level_progress.level_time = 0;
	
	if instance_exists(oPlayer) {
		oPlayer.stop_using = false;
	}
	obj_dynamic_equilibrium.alarm[1] = 10;//循环检测。
	
}