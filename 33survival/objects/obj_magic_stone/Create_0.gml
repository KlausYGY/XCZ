//矿石种类。
random_mode = irandom_range(0,2);

//血量
hp = 60 + global.level_wave * 40;

sprite_blinzk = 0;

//对象被击退变量
boost_x = 0;//被命中时，被击退的距离(不需要修改)。
boost_y = 0;
boost_defense = 0;//击退抗性。

xx = 1;//用于怪物生受击动画。

//燃烧
burn_animation = 5;//用于燃烧动画。
burn_layer = 0;//燃烧层数。
burn_damage = 0;//燃烧伤害。
burn_damage_max = 0;
burn_alarm = 60;//燃烧伤害间隔。


assist = instance_create_layer(x, y, "Instances", obj_assist);//创建方向指针。
assist.sprite = spr_magic_stone;//指针精灵。
assist.animation = random_mode;
assist.xx = 0.5;//精灵大小。
assist.dir_lock = true;//禁用旋转。
assist.pad = 10;//距离视野边框的距离。