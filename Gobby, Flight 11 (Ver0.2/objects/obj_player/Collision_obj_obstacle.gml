if (can_be_hit == true)
{
	hp -= 2;
	can_be_hit = false;
	invincibility_time = invincibility_duration;
}
if (hp <= 0)
{
	room_restart()
}