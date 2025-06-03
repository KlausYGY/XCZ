level_time_max = max(2000 + (global.level_wave * 200),3000);
level_time_effect = level_time_max * (1700 / level_time_max);//绘制血条黑色背景。

//在地图上的随机位置生成变量“_repeat”个刷怪井盖。
repeat(_repeat){
	enemy_produce = instance_create_layer(random_range(0,room_width), random_range(0,room_height), "spawn", obj_enemy_produce);
	//怪物生成方案（具体在obj_enemy_produce中）。
	enemy_produce.mode = 2;
}
