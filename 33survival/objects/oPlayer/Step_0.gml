//玩家移动
//检测移动键的状态。
var _keyboard_ad = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _keyboard_ws = keyboard_check(ord("S")) - keyboard_check(ord("W"));
if stop_using = false {
	if _keyboard_ad = 1		{ hspeed += speed_up; }
	if _keyboard_ad = -1	{ hspeed -= speed_up; }
	if _keyboard_ws = 1		{ vspeed += speed_up; }
	if _keyboard_ws = -1	{ vspeed -= speed_up; }

	//如果没有按下移动键，那么减速直到0。
	//否则如果按下了移动键，那么速度也不会超过速度上限。
	if _keyboard_ad = 0 and _keyboard_ws = 0 { 
		if speed > 0			{ speed -= speed_down; }
		if speed < 0			{ speed = 0; }	
		sprite = Player;//待机动画。
	}else{	
		if speed > speed_max	{ speed = speed_max; }
		sprite = Player_move;//移动动画。
	
		//移动时，武器上下动画。
		if weapon_animation < 3 and weapon_animation_lock = false {
			weapon_animation += 1;
			if weapon_animation >= 3 { weapon_animation_lock = true; }
		}
		if weapon_animation > -3 and weapon_animation_lock = true {
			weapon_animation -= 1;
			if weapon_animation <= -3 { weapon_animation_lock = false; }
		}
	}
}else{
	speed = 0;
	sprite = Player;//待机动画。
}
//检测朝向，当目标角度在左180度时，面朝左，反之亦然。
if direction > 89 and direction < 271 { xscale = 1; }
if direction > 269 or direction < 91 { xscale = -1; }


//无敌帧冷却。
if invincible_time < invincible_time_loading {
	invincible_time += 1;
}

//闪避。
//闪避冷却。
if boost_loading > 0 { boost_loading --; }
if mask_loading > 0 { mask_loading --; } 

if mask_loading = 0 {
	mask_index = Player;//碰撞重置。
}else{
	mask_index = spr_player_boost;//无碰撞。
}

if boost_loading = 0 and keyboard_check(vk_space) {
	boost_loading = 90;
	mask_loading = 30;
	boost_x = lengthdir_x(10, direction);
	boost_y = lengthdir_y(10, direction);
}
x += boost_x;
y += boost_y;
boost_x = lerp(boost_x, 0, 0.1);
boost_y = lerp(boost_y, 0, 0.1);


//玩家掉血死亡
if hp <= 0 {
	instance_destroy();
}

//播放动画。
if animation < 6 { animation += 0.25; }
if animation >= 6 { animation = 0; }

weapon.x = x;
weapon.y = y;

//防止卡墙里。
if x < 32 or x > room_width - 32 { x = xprevious; boost_x = 0; }
if y < 32 or y > room_height - 32 { y = yprevious; boost_y = 0;}