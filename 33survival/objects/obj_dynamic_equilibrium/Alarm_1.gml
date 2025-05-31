//alarm[1] = irandom_range(60, 300);//循环检测。

global.exp_probability_red = irandom_range(0, 100);//元素类型概率。
global.exp_probability_blue = irandom_range(0, 100 - global.exp_probability_red);
global.exp_probability_green = 100 - global.exp_probability_blue - global.exp_probability_red;