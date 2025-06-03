draw_set_font(fnt_ui);

//绘制素材。
draw_sprite_ext(sprite, image_index, x, y, xx * 2, xx * 2, direction, image_blend, image_alpha);

draw_text_transformed_color(x - 26, y - 2, "小火球", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

draw_text_transformed_color(x - 4 , y + 30 + (xx_lock * 5), level, 1, 1, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

if global.exp_red >= (level * 7) {
	draw_text_transformed_color(x - 22, y + 12, "所需红色元素:" + string( exp_level ) , 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}else{
	draw_text_transformed_color(x - 22, y + 12, "所需红色元素:" + string( exp_level ) , 0.4, 0.4, 0,  c_red,  c_red,  c_red,  c_red, image_alpha);
}