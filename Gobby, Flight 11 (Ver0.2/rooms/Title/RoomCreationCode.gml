if audio_is_playing(Title_Music)
{
	audio_stop_sound(Title_Music);
}
if audio_is_playing
{
	audio_stop_all();
}
audio_play_sound(Title_Music, 1, true);
global.obstacle_speed = 3
