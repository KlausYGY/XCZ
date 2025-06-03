//用于刷新属性。
hp = hp + global.player_hp;
hp_max = hp;
hp_effect_0 = hp * (18 / hp_max);//绘制血条黑色背景。
speed_max = 2 + global.player_speed; 
speed_up = speed_max / 10; //加速度，不用改。
speed_down = speed_max / 10;//减速度，不用改。
//无敌时间。
invincible_time_loading = 30 + global.invincible_time;
if invincible_time_loading > 90 { invincible_time_loading = 90; }
invincible_time = invincible_time_loading;