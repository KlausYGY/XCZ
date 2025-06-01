/// @description 初始化
sprite = spr_exp_red;
Suo = 0;//是否锁定玩家

create_trail = instance_create_layer(x,y,"Instances",obj_bullet_trail);
create_trail.depth = depth + 1;
create_trail.a = 8;//轨迹的长度。
create_trail.b = 6;//轨迹的大小。
create_trail.d = 0.5;//轨迹的透明度。

//随机类型系统。
random_exp_red = irandom_range(0, global.exp_probability_red);
random_exp_blue = irandom_range(0, global.exp_probability_blue);
random_exp_green = irandom_range(0, global.exp_probability_green);

if random_exp_red > random_exp_blue and random_exp_red > random_exp_green {
	sprite = spr_exp_red;
	create_trail.color = make_colour_rgb(255, 0 ,0);//红色。
}else{
	if random_exp_blue > random_exp_red and random_exp_blue > random_exp_green {
		sprite = spr_exp_blue;
		create_trail.color = make_colour_rgb(0,117,255);//蓝色。
	}else{
		if random_exp_green > random_exp_red and random_exp_green > random_exp_blue {
		sprite = spr_exp_green;
		create_trail.color = make_colour_rgb(0, 255, 0);//；绿色。
		}
	}
}
