function scr_rotate(argument0, argument1, argument2) {
	var _angle,_dir,_rotspeed;
	_angle = argument0;
	_dir = argument1;
	_rotspeed = argument2;

	if abs(((_dir - _angle)mod 360 + 540)mod 360 - 180) <= _rotspeed {
	    _angle = _dir
	  }else{
	    _angle += sign(((_dir - _angle)mod 360 + 540)mod 360 - 180) * _rotspeed
	  }
  
	return _angle
}
//转向脚本。