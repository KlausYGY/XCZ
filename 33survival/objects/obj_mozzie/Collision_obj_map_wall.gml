//移动到上一个位置。
x = xprevious;
y = yprevious;
//滑动。
if not place_meeting (x + hspeed, y, other.object_index) x += hspeed else hspeed = 0;
if not place_meeting (x, y + vspeed, other.object_index) y += vspeed else vspeed = 0;

//防止卡墙里。
if speed = 0 {
	if x < other.x { x -= 1; }
	if x > other.x { x += 1; }
	if y < other.y { y -= 1; }
	if y > other.y { y += 1; }
}
