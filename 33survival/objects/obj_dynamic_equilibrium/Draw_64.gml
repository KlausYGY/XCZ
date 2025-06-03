draw_set_font(fnt_ui);

draw_text_transformed_color(20, 40,"红色元素: " + string(global.exp_red), 1.5, 1.5, 0,  c_red,  c_red,  c_red,  c_red, image_alpha);
draw_text_transformed_color(20, 60,"蓝色元素: " + string(global.exp_blue), 1.5, 1.5, 0,  c_blue,  c_blue,  c_blue,  c_blue, image_alpha);
draw_text_transformed_color(20, 80,"绿色元素: " + string(global.exp_green), 1.5, 1.5, 0,  c_green,  c_green,  c_green,  c_green, image_alpha);
draw_text_transformed_color(20, 120,"红色元素概率: " + string(global.exp_probability_red), 1.5, 1.5, 0,  c_red,  c_red,  c_red,  c_red, image_alpha);
draw_text_transformed_color(20, 140,"蓝色元素概率: " + string(global.exp_probability_blue), 1.5, 1.5, 0,  c_blue,  c_blue,  c_blue,  c_blue, image_alpha);
draw_text_transformed_color(20, 160,"绿色元素概率: " + string(global.exp_probability_green), 1.5, 1.5, 0,  c_green,  c_green,  c_green,  c_green, image_alpha);
