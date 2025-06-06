//用于导弹标识的坐标跟随以及在玩家视野内不显示的脚本。
function scr_uid_missile(){
	var _viewx = camera_get_view_x(view_camera[0]);
	var _viewy = camera_get_view_y(view_camera[0]);
	var _vieww = camera_get_view_width(view_camera[0]);
	var _viewh = camera_get_view_height(view_camera[0]);
	
	if instance_exists(assist) {
		//同步指针位置。
		assist.dst_x = x;
		assist.dst_y = y;
		//如果调用脚本的实例在玩家视野范围内，那么将看不见标识。
		if x < obj_camera_0.x - 320 or x > obj_camera_0.x + 320 or y < obj_camera_0.y - 180 or y > obj_camera_0.y + 180 { 
			assist.image_alpha = 1; 
		}else{ 
			assist.image_alpha = 0;
		}
	}
}