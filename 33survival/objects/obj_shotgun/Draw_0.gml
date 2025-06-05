//绘制素材。
draw_set_font(fnt_ui);

draw_sprite_ext(sprite, image_index, x, y, xx * 2, xx * 2, direction, image_blend, image_alpha);

draw_text_transformed_color(x - 26, y - 2, "霰弹枪", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

draw_text_transformed_color(x - 4 , y + 30 + (xx_lock * 8), level, 1, 1, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

if global.exp_red >= (level * 30) {
	draw_text_transformed_color(x - 22, y + 12, "所需红色元素:" + string( exp_level ) , 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}else{
	draw_text_transformed_color(x - 22, y + 12, "所需红色元素:" + string( exp_level ) , 0.4, 0.4, 0,  c_red,  c_red,  c_red,  c_red, image_alpha);
}


if random_up_text_mode = 1 {
	draw_text_transformed_color(x - 26, y + 60, "! 多重散射提升 & 穿甲提升 & 击退提升 !", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
	draw_text_transformed_color(x - 26, y + 80, "多重散射 + "  + string( random_up_text_darw ) + string( " 穿甲 + " ) + string( global.armor_piercing ) + string( " 击退 + " ) + string( random_up_text_darw_1 ), 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}