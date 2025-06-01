draw_self();

draw_set_colour(c_black)//黑色。
draw_line_width(100, 20, 100 + level_time_effect, 20, 12);//绘制血条底板。
//draw_text_transformed_color(50, 0, level_time_lv, 2, 2, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
draw_set_colour(c_white)//白色。
draw_line_width(100, 20, 100 + (level_time * (1700 / level_time_max)), 20 , 12);//绘制血条。

draw_text_transformed_color(50, 5, global.level_wave + 1, 2, 2, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

if global.level_time_lv = true {
	draw_text_transformed_color(900, 50, round(alarm[0] / 60), 2, 2, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}

