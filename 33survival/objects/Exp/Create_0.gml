/// @description 初始化
sprite = spr_exp_red;
Suo = 0;//是否锁定玩家

//随机类型系统。
random_exp_red = irandom_range(0, global.exp_probability_red);
random_exp_blue = irandom_range(0, global.exp_probability_blue);
random_exp_green = irandom_range(0, global.exp_probability_green);

if random_exp_red > random_exp_blue and random_exp_red > random_exp_green {
	sprite = spr_exp_red;
}else{
	if random_exp_blue > random_exp_red and random_exp_blue > random_exp_green {
		sprite = spr_exp_blue;
	}else{
		if random_exp_green > random_exp_red and random_exp_green > random_exp_blue {
		sprite = spr_exp_green;
		}
	}
}
