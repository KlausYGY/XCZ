global.level_time_lv = false;
global.level_wave = 0;
level_time = 0;
level_time_max = 2000 + (global.level_wave * 200);
level_time_effect = level_time_max * (1700 / level_time_max);//绘制血条黑色背景。
//进入强化界面。
instance_create_layer(0, -100, "Instances", obj_magic_strengthen);