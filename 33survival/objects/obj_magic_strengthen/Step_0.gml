if global.level_time_lv = false {
	magic_0.y = -1000;
	magic_1.y = -1000;
}
if global.level_time_lv = true and round(obj_level_progress.alarm[0] / 60) = 0 {
	magic_0.x = oPlayer.x - 200;
	magic_0.y = oPlayer.y -100;
	
	magic_1.x = oPlayer.x;
	magic_1.y = oPlayer.y -100;
}