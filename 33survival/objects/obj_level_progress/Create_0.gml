global.level_time_lv = false;
global.level_wave = 0;
level_time = 0;
level_time_max = 2000 + (global.level_wave * 200);
level_time_effect = level_time_max * (1700 / level_time_max);//绘制血条黑色背景。
//进入强化界面。
instance_create_layer(0, -100, "Instances", obj_magic_strengthen);


//重复生成。
_repeat = 4;

//在地图上的随机位置生成变量“_repeat”个刷怪井盖。
repeat(_repeat){
	enemy_produce = instance_create_layer(random_range(0,room_width), random_range(0,room_height), "spawn", obj_enemy_produce);
	//怪物生成方案（具体在obj_enemy_produce中）。
	enemy_produce.mode = 2;
}
