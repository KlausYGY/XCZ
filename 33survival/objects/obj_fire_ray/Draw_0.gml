/// @description 绘制激光

//draw_line(x,y, xEnd, yEnd);

for (j = 14; j < length_laser; j++ )  {
    //var flicker = random_range(0.6,1.4); // change to make diffrent flicker, or delete flicker and set y_scale back to 1
  
    // variables set in create to ajust to need!
    draw_sprite_ext(FireRay1, image_index, x + lengthdir_x(j, direction), y + lengthdir_y(j, direction), 1, 1, direction,c_white, 1 );
	draw_sprite_ext(FireRay2, image_index, xEnd, yEnd, 1, 1, direction,c_white, 1);
	draw_sprite_ext(FireRay0, image_index, x, y, 1, 1, direction,c_white, 1);

}
