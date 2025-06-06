if global.level_time_lv = true {
	//创建列表，将房间范围内的所有经验销毁。
	var _list = ds_list_create();
	var hits = collision_rectangle_list(0, 0, room_width, room_height, Exp, false, true, _list, false);

	if (hits > 0) {
		for (var i = 0; i < hits; ++i;) {
			instance_destroy(_list[| i]);
		}
	}
	ds_list_destroy(_list);
	
	//创建列表，将房间范围内的所有血瓶销毁。
	var _list_0 = ds_list_create();
	var hits_0 = collision_rectangle_list(0, 0, room_width, room_height, obj_hp_restore, false, true, _list, false);

	if (hits_0 > 0) {
		for (var i = 0; i < hits_0; ++i;) {
			instance_destroy(_list_0[| i]);
		}
	}
	ds_list_destroy(_list_0);
	
	if instance_exists(oPlayer) {
		oPlayer.stop_using = true;
	}
}
