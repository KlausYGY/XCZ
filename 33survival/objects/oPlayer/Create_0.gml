hp = 20 + global.player_hp;//血量。
hp_max = hp;//最大血量。
hp_effect_0 = hp * (18 / hp_max);//绘制血条黑色背景。

//移动按键状态。
keyboard_ad = 0; keyboard_ws = 0;
//速度相关变量。
speed_max = 2 + global.player_speed; 
speed_up = speed_max / 10; //加速度，不用改。
speed_down = speed_max / 10;//减速度，不用改。
stop_using = false;

sprite = Player;//动画。
xscale = 1;//朝向。
animation = 0;//使用的动画。
//移动时，武器上下动画。
weapon_animation = 0;
weapon_animation_lock = false;
weapon_direction = 0;//武器角度。

//无敌时间。
invincible_time_loading = 30 + global.invincible_time;
invincible_time = invincible_time_loading;

//闪避。
boost_x = 0;
boost_y = 0;
boost_loading = 60;
mask_loading = 30;

weapon = instance_create_layer(x, y, "Instances", obj_player_magic_0);