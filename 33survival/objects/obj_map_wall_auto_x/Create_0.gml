x = 0;
y = 0;

//检测房间能水平垂直能放多少检测器。
x_number =  round(room_width / 44);
//当前放置了多少检测器。
x_number_lock = 0;

//重复创建检测器，直到达到房间最大上限。
repeat(x_number) {
	if x_number_lock <= x_number {
		var _detector = instance_create_layer(x + (x_number_lock * 44), y, "Instances", obj_map_wall);
		var _detector_1 = instance_create_layer(x + (x_number_lock * 44) + 22, y - 22, "Instances", obj_map_wall);
		var _detector_0 = instance_create_layer(x + (x_number_lock * 44), room_height + 42, "Instances", obj_map_wall);
		var _detector_2 = instance_create_layer(x + (x_number_lock * 44) + 22, room_height + 64, "Instances", obj_map_wall);
		x_number_lock += 1;
	}
}

alarm[0] = 100;//创建完后销毁自己。