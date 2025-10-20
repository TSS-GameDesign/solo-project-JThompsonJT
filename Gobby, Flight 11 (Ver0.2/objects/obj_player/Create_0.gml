forceup = 0;
angle = 0;
maxangle = 0;
hp_total = 10;
hp = hp_total;
xp = 0;
xp_require = 100;
current_level = 1;
can_be_hit = true;
invincibility_time = 0;
invincibility_duration = 60;
frame_counter = 0;
function add_xp(_xp_to_add)
{
	xp += _xp_to_add;
	if (xp >= xp_require)
	{
		current_level ++;
		xp -= xp_require;
		xp_require *= 1.4;
		hp_total += 5;
		hp = hp_total;
	}
}
