//子弹轨迹脚本。
function draw_trail_scripts(argument0, argument1, argument2, argument3, argument4, argument5) {

	var _length,_width,_color,_sprite,_slim,_alpha,_alpha_t,_texture,_dir,_dim,_min,_height;

	_length = argument0; //长度。
	_width = argument1; //宽度。
	_color = argument2; //颜色。
	_sprite = argument3; //轨迹使用的纹理，如果是-1那么没有精灵。
	_slim = argument4; //轨迹末端是否收缩。
	_alpha = argument5; //透明度。
	
	
	//获取当前坐标和过去坐标之间的距离。
	array_trail[0,0] = x;
	array_trail[0,1] = y;
	_height =  array_length(array_trail);//弃用array_length_2d更换为array_length。
	if (_height > 1) array_trail[0,2] = point_distance(array_trail[0,0], array_trail[0,1], array_trail[1,0], array_trail[1,1]) + array_trail[1,2];
	else array_trail[0,2] = 0;
	
	//设置纹理。
	if (_sprite >= 0) {
		_texture = sprite_get_texture(_sprite, 0);
		_dim = sprite_get_width(_sprite) / sprite_get_width(_sprite)
	}else{
		_texture = -1;
		_dim = 1
	}
	
	texture_set_repeat(1);//脚本。
	draw_primitive_begin_texture(pr_trianglestrip, _texture);
	_alpha_t = 4;
	_dir = 0;
	_min = min(_height - 1, _length);
	
	
	for(var _i = 0; _i < _min; _i++) {
	  if (array_trail[_i,0] != array_trail[_i + 1,0] || array_trail[_i,1] != array_trail[_i + 1,1])
		_dir = point_direction(array_trail[_i,0], array_trail[_i,1], array_trail[_i + 1,0], array_trail[_i + 1,1]);
		
	  var _len = _width / 2 - ((_i + 1) / _min * _width / 2) * _slim;
	  var _xx = lengthdir_x(_len, _dir + 90); 
	  var _yy = lengthdir_y(_len, _dir + 90);
	  _alpha_t = (_min - _i) / (_min / 2) * _alpha;
	  draw_vertex_texture_color(array_trail[_i,0] + _xx, array_trail[_i,1] + _yy, array_trail[_i,2] / _width / _dim, 0, _color, _alpha_t);
	  draw_vertex_texture_color(array_trail[_i,0] - _xx, array_trail[_i,1] - _yy, array_trail[_i,2] / _width / _dim, 1, _color, _alpha_t);
	}
	draw_primitive_end();


	_min = min(_height,_length);
	for (var _i = _min; _i > 0; _i--){
	  array_trail[_i,0] = array_trail[_i - 1,0];
	  array_trail[_i,1] = array_trail[_i - 1,1];
	  array_trail[_i,2] = array_trail[_i - 1,2];
	}
}

function texture_set_repeat(argument0) {
	gpu_set_texrepeat( argument0 );
}