//绘制素材。
draw_sprite_ext(sprite, image_index, x, y, xx, xx, direction, image_blend, image_alpha);

draw_text_transformed_color(x - 30, y - 30, "Little fireball", 0.5, 0.5, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
draw_text_transformed_color(x - 20, y + 20, "Level: " + string( level ) , 0.5, 0.5, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

if global.exp_red >= (level * 5) {
	draw_text_transformed_color(x - 20, y + 30, "Level Exp: " + string( exp_level ) , 0.5, 0.5, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}else{
	draw_text_transformed_color(x - 20, y + 30, "Level Exp: " + string( exp_level ) , 0.5, 0.5, 0,  c_red,  c_red,  c_red,  c_red, image_alpha);
}