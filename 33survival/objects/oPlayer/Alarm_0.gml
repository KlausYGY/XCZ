//用于刷新属性。
hp = 20 + global.player_hp;//血量。
hp_max = hp;//最大血量。
hp_effect_0 = hp * (18 / hp_max);//绘制血条黑色背景。
speed_max = 2 + global.player_speed; 
speed_up = speed_max / 10; //加速度，不用改。
speed_down = speed_max / 10;//减速度，不用改。
invincible_time_loading = 30 + global.invincible_time;
invincible_time = invincible_time_loading;