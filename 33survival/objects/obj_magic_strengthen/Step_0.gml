if global.level_time_lv = false {
	magic_0.y = -1000;
	magic_1.y = -1000;
	magic_2.y = -1000;
	magic_3.y = -1000;
	magic_4.y = -1000;
	magic_5.y = -1000;
}
if global.level_time_lv = true and round(obj_level_progress.alarm[0] / 60) = 0 {
	magic_0.x = oPlayer.x - 200;
	magic_0.y = oPlayer.y - 100;
	
	magic_1.x = oPlayer.x - 100;
	magic_1.y = oPlayer.y - 100;
	
	magic_2.x = oPlayer.x - 0;
	magic_2.y = oPlayer.y - 100;
	
	magic_3.x = oPlayer.x + 100;
	magic_3.y = oPlayer.y - 100;
	
	magic_4.x = oPlayer.x + 100;
	magic_4.y = oPlayer.y + 100;
	
	magic_5.x = oPlayer.x + 0;
	magic_5.y = oPlayer.y + 100;
}