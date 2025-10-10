//action
if (mouse_check_button_released(mb_left))
{
	forceup = -5;
}

//action
if (mouse_check_button_released(mb_right))
{
	forceup = -5;
}

if (keyboard_check_released(vk_space))
{
	forceup = -5;
}

if (keyboard_check_released(vk_up))
{
	forceup = -5;
}

y += forceup;
forceup += 0.10;

//animation
if (y > yprevious)
{
	sprite_index = spr_player_down;
	maxangle = -15;
}
else
{
	sprite_index = spr_player_up;
	maxangle = 15;
}

//apply angle
angle = lerp(angle, maxangle, 0.1);
image_angle = angle;
 
//checks if invicibility_time is more than 0
if (invincibility_time > 0)
{
	invincibility_time--;
}
//if time is less than or equal 0, make hitable
if (invincibility_time <= 0)
{
	can_be_hit = true
}
if y <= 0
{
	y = -50;
}
if y >= 576
{
	room_restart()
}


