if level_time < 4000 {
	level_time ++;
}

if level_time >= 4000 {
	global.level_time_lv = true;
	
	//创建列表，将房间范围内的所有敌人销毁。
	var _list = ds_list_create();
	var hits = collision_rectangle_list(0, 0, room_width, room_height, obj_enemy, false, true, _list, false);

	if (hits > 0) {
		for (var i = 0; i < hits; ++i;) {
			instance_destroy(_list[| i]);
		}
	}
	ds_list_destroy(_list);
	
}