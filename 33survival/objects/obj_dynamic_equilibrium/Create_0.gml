global.hp_restore = 0; //用于动态血瓶掉率机制。

global.exp_red = 0;//红色元素。
global.exp_blue = 0;//蓝色元素。
global.exp_green = 0;//绿色元素。
global.exp_probability_red = irandom_range(0, 100);//元素类型概率。
global.exp_probability_blue = irandom_range(0, 100 - global.exp_probability_red);
global.exp_probability_green = 100 - global.exp_probability_blue - global.exp_probability_red;

alarm[0] = 60;//循环检测。
alarm[1] = 10;//循环检测。