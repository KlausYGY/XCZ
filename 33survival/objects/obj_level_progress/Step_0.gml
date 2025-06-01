if level_time < level_time_max {
	level_time += 1;
	//level_time += 1;
}

if level_time >= level_time_max {
	global.level_time_lv = true;
	
	//创建列表，将房间范围内的所有敌人销毁。
	var _list = ds_list_create();
	var hits = collision_rectangle_list(0, 0, room_width, room_height, obj_enemy, false, true, _list, false);

	if (hits > 0) {
		for (var i = 0; i < hits; ++i;) {
			instance_destroy(_list[| i]);
		}
		alarm[0] = 360;//倒计时给玩家捡经验。
	}
	ds_list_destroy(_list);
	
	
	//创建列表，将房间范围内的所有子弹销毁。
	var _list_1 = ds_list_create();
	var hits_1 = collision_rectangle_list(0, 0, room_width, room_height, obj_bullet_enemy, false, true, _list, false);

	if (hits_1 > 0) {
		for (var i = 0; i < hits_1; ++i;) {
			instance_destroy(_list_1[| i]);
		}
		alarm[0] = 360;//倒计时给玩家捡经验。
	}
	ds_list_destroy(_list_1);
}