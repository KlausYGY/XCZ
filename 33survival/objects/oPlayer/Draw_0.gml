/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
draw_sprite_ext(spr, image_index, x, y, Fx, 1, 0, image_blend, image_alpha);

draw_text(x,y,hp);

draw_set_colour(c_black)//黑色。
//最后的那个“3”是血条的厚度。
draw_line_width(x - 10, y - 26, x - 10 + hp_effect_0, y - 26, 3);//绘制血条底板。
draw_set_colour(c_red);//红色。
draw_line_width(x - 10, y - 26, x - 10 + (hp * (18 / hp_max)), y - 26, 3);//绘制血条。
draw_set_colour(c_white)//白色。