/// @description 防止重叠
   if other.x >= x { x -= 0.5; }
    if other.y >= y { y -= 0.5; }
    if other.x <= x { x += 0.5; }
    if other.y <= y { y += 0.5; }