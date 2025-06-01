if dead = true {
	if b > 0 { b -= 0.5; }
	if b <= 0 { instance_destroy(); }
}