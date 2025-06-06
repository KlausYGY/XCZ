//因为到时间而销毁不会产生经验。
if global.level_time_lv = false {
	
	//掉落数量。
	var _exp = irandom_range( round(10 + ((global.level_wave * 5) / 1.5)), round(20 + ((global.level_wave * 10) / 1.5)));
	var _range = 0;//随机掉落范围。
	//掉落经验球。
	if random_mode = 0 {
		repeat(_exp){
			var _exp_0 = instance_create_depth(x + irandom_range(_range, -_range), y + irandom_range(_range, -_range), depth, Exp);
			_exp_0.sprite = spr_exp_red; 
			_exp_0.create_trail.color = make_colour_rgb(255, 0 ,0);//红色。
			_exp_0.direction = random(360);
			_exp_0.speed = random(6);
	}}
	if random_mode = 1 {
		repeat(_exp){
			var _exp_1 = instance_create_depth(x + irandom_range(_range, -_range), y + irandom_range(_range, -_range), depth, Exp);
			_exp_1.sprite = spr_exp_blue;
			_exp_1.create_trail.color = make_colour_rgb(0,117,255);//蓝色。
			_exp_1.direction = random(360);
			_exp_1.speed = random(6);
	}}
	if random_mode = 2 {
		repeat(_exp){
			var _exp_2 = instance_create_depth(x + irandom_range(_range, -_range), y + irandom_range(_range, -_range), depth, Exp);
			_exp_2.sprite = spr_exp_green; 
			_exp_2.create_trail.color = make_colour_rgb(0, 255, 0);//；绿色。
			_exp_2.direction = random(360);
			_exp_2.speed = random(6);
	}}
	
}

if instance_exists(assist) { assist.dead = true; }
//销毁雷达指针。
