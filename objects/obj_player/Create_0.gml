direction_multiplier = 1; // Forward or reverse gear

acceleration_force = 400;
turning_force = 0.75;

my_sound_id = audio_play_sound(snd_diesel_idle, 1, true, 0.25 * global.sound_volume);

previous_speed_x = 0;
previous_speed_y = 0;