/// @description 

damage = 1;//攻击力

xEnd = 0;
yEnd = 0;
length_laser = 0;

max_length = 200;  // 射线长度

// change here to ajust to your needs for "refresh" rate of laser collision check
    // memory space saver, less checks per step
    refresh_hit = false;
	
    refresh_hit_time = 20;  // 3 times per second
    refresh_hit_timer = 0;

attack_repel = 0.5;//击退力。

burn_layer_max = 6;//燃烧层数上限。