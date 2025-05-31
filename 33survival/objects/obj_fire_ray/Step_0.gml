/// @description 跟随玩家
//

if instance_exists(oPlayer){//检查玩家对象是否存在
	x = oPlayer.x;
	y = oPlayer.y;
	

direction = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y );


for (i = 0; i < max_length; i++ ) {

   xEnd = x + lengthdir_x(i, direction);
   yEnd = y + lengthdir_y(i, direction);
  
   length_laser = i;   // how long the laser is in the end
   
   
}



}else{
	speed = 0;
}


//伤害目标。
//检查玩家对象。
if instance_exists(oPlayer) {
	if refresh_hit = false { 
		refresh_hit = true;//只能攻击一次。
		refresh_hit_timer = refresh_hit_time;
		var _list = ds_list_create();//创建列表。
		
		var hits = collision_line_list(x,y, xEnd, yEnd, obj_enemy, 0, 0, _list, 0) ;//检查路径是否有对象
		
        if hits > 0 {
			for (var k = 0; k < hits; k++;) {
				_list[| k].hp = _list[| k].hp -damage;//扣除生命
				
				
				//施加燃烧
				ran_gl = random_range(0,100);//燃烧概率
				
				if ran_gl < 100 {
					
					if _list[| k].burn_layer < burn_layer_max {
						_list[| k].burn_layer += 1;
						_list[| k].burn_damage += 4;
					}
				}
				
				
				
				//击退目标。
				_list[| k].boost_x = lengthdir_x(attack_repel, direction);
				_list[| k].boost_y = lengthdir_y(attack_repel, direction);
				//创建伤害飘字，让飘字图层在本体之上。
				var _dano = instance_create_layer(_list[| k].x, _list[| k].y - 10, "Instances", obj_efeito);
				_dano.depth = other.depth - 1;
				//飘字和造成的伤害相同。
				_dano.dano = damage;   
			}
        }
     ds_list_destroy(_list);
     }
 }

 if refresh_hit = true {
	 if refresh_hit_timer > 0 {
		 refresh_hit_timer -= 1;
	 }
	if refresh_hit_timer = 0 {
		refresh_hit = false;
	}

 }