x = 0;
y = 0;

//检测房间能水平垂直能放多少检测器。
y_number =  round(room_height / 51) + 1;
//当前放置了多少检测器。
y_number_lock = 0;

//重复创建检测器，直到达到房间最大上限。
repeat(y_number) {
	if y_number_lock <= y_number {
		var _detector = instance_create_layer(x, y + (y_number_lock * 51), "Instances", obj_map_wall);
		var _detector_0 = instance_create_layer(room_width, y + (y_number_lock * 51), "Instances", obj_map_wall);
		y_number_lock += 1;
	}
}
alarm[0] = 100;//创建完后销毁自己。