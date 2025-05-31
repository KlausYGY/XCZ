/// @description 初始化火焰足迹

damage = 1;//伤害
tmd = 1;//透明度
tmd_time = 100;

refresh_hit = false;
refresh_hit_time = 80;  // 3 times per second
refresh_hit_timer = 0;

//燃烧
burn_layer = 0;
burn_damage = 0;
burn_damage_max = 0;
burn_alarm = 80;
burn_lock = false;
ani = 5;

burn_layer_max = 6;//燃烧层数上限。