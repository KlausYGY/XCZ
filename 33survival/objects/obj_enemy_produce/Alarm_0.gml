//重复生成。
alarm[0] = 360;

//如果关卡时间到了，那么暂停生成。
if global.level_time_lv = false {
	
	xx = 2;
	
	//生成方案。
	switch (mode) {
		case 0:
			//一次生成1个史莱姆。
			instance_create_layer(x, y, "Instances", Enemy_Slim);
		break;
		
		case 1:
			//一次生成1-2个史莱姆。
			repeat (irandom_range(1,2)) {
				instance_create_layer(x, y, "Instances", Enemy_Slim);
			}
		break;
		
		case 2:
		if global.level_wave = 0 {
			repeat (irandom_range(1, 2)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", Enemy_Slim); }}
		if global.level_wave = 1 {
			repeat (irandom_range(1, 2)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", Enemy_Slim); }
			repeat (irandom_range(0, 1)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_mozzie); }}
		if global.level_wave = 2 {
			repeat (irandom_range(1, 2)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", Enemy_Slim); }
			repeat (irandom_range(0, 1)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_little_ghost); }}
		if global.level_wave = 3 {
			repeat (irandom_range(1, 3)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", Enemy_Slim); }
			repeat (irandom_range(0, 1)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_little_ghost); }}
		if global.level_wave = 4 {
			repeat (irandom_range(3, 5)) {
				instance_create_layer(x + random_range(-32, 32), y + random_range(-32, 32), "Instances", obj_mozzie); }}
		if global.level_wave = 5 {
			repeat (irandom_range(2, 4)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", Enemy_Slim); }
			repeat (irandom_range(0, 1)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_mushroom_man); }}
		if global.level_wave = 6 {
			repeat (irandom_range(1, 4)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", Enemy_Slim); }
			repeat (irandom_range(0, 1)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_mushroom_man); }
			repeat (irandom_range(1, 2)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_mozzie); }}
		if global.level_wave = 7 {
			repeat (irandom_range(1, 4)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_mozzie); }
			repeat (irandom_range(1, 2)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_mushroom_man); }
			repeat (irandom_range(0, 3)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_little_ghost); }}
		if global.level_wave = 8 {
			repeat (irandom_range(2, 6)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_mushroom_man); }}
		if global.level_wave = 9 {
			repeat (irandom_range(1, 3)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_mozzie); }
			repeat (irandom_range(1, 3)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_mushroom_man); }
			repeat (irandom_range(1, 3)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", obj_little_ghost); }
			repeat (irandom_range(1, 3)) {
				instance_create_layer(x + random_range(-6, 6), y + random_range(-6, 6), "Instances", Enemy_Slim); }
			}
			
		break;
	
			//没用的。
		default:
			//instance_create_layer(x, y, "Instances", Enemy_Slim);
		break;
	}
}