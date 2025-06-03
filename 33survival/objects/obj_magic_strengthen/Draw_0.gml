if instance_exists(oPlayer) {
	if oPlayer.stop_using = true {
		draw_text_transformed_color(oPlayer.x - 30, oPlayer.y + 30, "按空格关闭升级", 0.5, 0.5, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
	}
}