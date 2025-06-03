//子弹寿命倒计时
alarm[0] = 60;

//子弹伤害。
bullet_damage = 3;
attack_repel = 2;//击退力。
armor_piercing = 1;

create_trail = instance_create_layer(x,y,"Instances",obj_bullet_trail);
create_trail.depth = depth + 1;
create_trail.a = 8;//轨迹的长度。
create_trail.b = 6;//轨迹的大小。
create_trail.d = 0.5;//轨迹的透明度。
create_trail.color = make_colour_rgb(255, 0 ,0);//红色。

//穿甲用列表。
_list = ds_list_create();

//施加燃烧。
burn = 0;//燃烧概率。
burn_probability = irandom_range(0,100);//如果随机的值概率小于燃烧概率，那么进行燃烧。
//例如：if burn_probability <= burn
burn_damage = 0;//燃烧伤害。

