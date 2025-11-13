if (can_be_hit == true) //Adds health and sets temporary invincibility 
{
	hp += 2;
	can_be_hit = false;
	instance_destroy(other);
	invincibility_time = invincibility_duration;
}
if (hp <= 0)
{
	room_restart()
}
if (hp >= 0)
{
	hp = 10;
}