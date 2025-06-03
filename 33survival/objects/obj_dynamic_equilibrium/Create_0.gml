randomise();//本地种子随机化。

global.exp_red = 0;//红色元素。
global.exp_blue = 0;//蓝色元素。
global.exp_green = 0;//绿色元素。
global.exp_probability_red = irandom_range(0, 100);//元素类型概率。
global.exp_probability_blue = irandom_range(0, 100 - global.exp_probability_red);
global.exp_probability_green = 100 - global.exp_probability_blue - global.exp_probability_red;

//红色相关。
global.armor_piercing = 0;//穿甲加成。
global.player_magic_0_lv = 0;//小火球技能。
//蓝色相关。
global.blue_up_lv = 0;//蓝色强化技能。
global.player_speed = 0;//玩家移动速度加成。
global.bullet_speed = 1;//投射物速度加成。（大于1强化）。
global.attack_range = 1;//攻击范围加成。（大于1强化）。
global.attack_accuracy = 1;//精度加成（小于1强化）。
global.attack_repel = 0;//击退加成。
//绿色相关。
global.green_up_lv = 0;//绿色强化技能。
global.player_hp = 0;//玩家血量加成。
global.player_hp_reply = 0;//玩家自然回血加成。
global.invincible_time = 0;//无敌时间加成。
global.exp_range = 50;//经验吸取范围加成。
global.hp_restore = 0; //用于动态血瓶掉率机制（不用修改）。
hp_restore_up = 0;//修改这个。

alarm[0] = 60;//循环检测。
alarm[1] = 10;//循环检测。

instance_create_layer(room_width / 2, room_height / 2, "Instances", oPlayer);