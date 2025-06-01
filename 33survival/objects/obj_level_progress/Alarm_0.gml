//创建列表，将房间范围内的所有经验销毁。
var _list = ds_list_create();
var hits = collision_rectangle_list(0, 0, room_width, room_height, Exp, false, true, _list, false);

if (hits > 0) {
	for (var i = 0; i < hits; ++i;) {
		instance_destroy(_list[| i]);
	}
}
ds_list_destroy(_list);

if instance_exists(oPlayer) {
	oPlayer.stop_using = true;
}

//进入强化界面。
instance_create_layer(x, y, "Instances", obj_magic_strengthen);