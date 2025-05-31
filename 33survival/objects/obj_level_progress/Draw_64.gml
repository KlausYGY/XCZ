draw_self();

draw_set_colour(c_black)//黑色。
draw_line_width(100, 20, 100 + level_time_effect, 20, 12);//绘制血条底板。
draw_text_transformed_color(50, 0, level_time_lv, 2, 2, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
draw_set_colour(c_white)//白色。
draw_line_width(100, 20, 100 + (level_time * (1700 / level_time_max)), 20 , 12);//绘制血条。

