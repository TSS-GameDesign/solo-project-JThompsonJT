if audio_is_playing(Title_Music)
{
	audio_stop_sound(Title_Music);
}
audio_play_sound(Title_Music, 1, true);