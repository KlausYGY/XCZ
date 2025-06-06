var _sx, _sy, _tx, _ty, _dx, _dy, _mx, _my, _vx, _vy, _vl;
_sx = src.x; _sy = src.y // 原始位置。
_tx = dst_x; _ty = dst_y // 目标的位置。
_dx = _tx - _sx; _dy = _ty - _sy // 差别。
_vl = sqrt(_dx * _dx + _dy * _dy) // 距离。
var _viewx = camera_get_view_x(view_camera[0]);
var _viewy = camera_get_view_y(view_camera[0]);
var _vieww = camera_get_view_width(view_camera[0]);
var _viewh = camera_get_view_height(view_camera[0]);

if _vl != 0 { 
	_vx = _dx / _vl; 
	_vy = _dy / _vl; 
}else{ 
	_vx = 0; _vy = 0; 
}

/*启用后即使在视野内指针也会跟随目标。
if _vl > inner * 2 {
    _vl -= inner;
    image_alpha = 1;
}else{
    image_alpha = max(0, (_vl - inner) / inner);
    _vl /= 2;
}
*/
if dir_lock = false {
	image_angle = point_direction(_sx, _sy, _tx, _ty);
}else{
	image_angle = 0;
}

if _vy < 0 {
    _vl = min(_vl, ((_viewy + pad) - _sy) / _vy);
} else if _vy > 0 {
    _vl = min(_vl, ((_viewy + _viewh - pad) - _sy) / _vy);
}
if _vx < 0 {
    _vl = min(_vl, ((_viewx + pad) - _sx) / _vx);
} else if (_vx > 0) {
    _vl = min(_vl, ((_viewx + _vieww - pad) - _sx) / _vx);
}
x = _sx + _vx * _vl;
y = _sy + _vy * _vl;
