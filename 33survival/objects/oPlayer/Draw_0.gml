/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
draw_sprite_ext(sprite, animation, x, y, xscale, 1, 0, image_blend, image_alpha);

draw_text(x,y,hp);

draw_set_colour(c_black)//黑色。
draw_roundrect(x - 12, y - 29, x + 10, y - 23, 0);
//最后的那个“3”是血条的厚度。
//draw_line_width(x - 10, y - 26, x - 10 + hp_effect_0, y - 26, 3);//绘制血条底板。
draw_set_colour(c_red);//红色。
draw_line_width(x - 10, y - 26, x - 10 + (hp * (18 / hp_max)), y - 26, 3);//绘制血条。
draw_set_colour(c_white)//白色。


//如果场上有敌人，那么获得最近的那个敌人的id。
if instance_exists(obj_enemy) {
	weapon_direction = instance_nearest(x, y, obj_enemy);
}else{
	weapon_direction = instance_nearest(x, y, obj_mouse);
}
//绘制武器。
var _dir = point_direction(x, y, weapon_direction.x, weapon_direction.y)
draw_sprite_ext(Fire_Fazhan, 0, x, y + weapon_animation, 1, xscale, _dir - 180, image_blend, 1);


//攻击方向箭头。
draw_sprite_ext(spr_gui_atkdir, image_index, x + lengthdir_x(20, direction), y + lengthdir_y(20, direction), 1, 1, direction, image_blend, image_alpha);