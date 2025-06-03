if instance_exists(oPlayer) {
	magic_0 = instance_create_layer(oPlayer.x - 200, oPlayer.y -100, "magic", obj_magic_0);
	
	magic_1 = instance_create_layer(oPlayer.x - 100, oPlayer.y -100, "magic", obj_blue_up);
	
	magic_2 = instance_create_layer(oPlayer.x - 0, oPlayer.y -100, "magic", obj_green_up);
}