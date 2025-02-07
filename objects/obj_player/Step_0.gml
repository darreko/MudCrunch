if (keyboard_check(vk_up)) // accelerator
{
	// TODO: apply the force in the correct direction
	var force_x = lengthdir_x(acceleration_force * direction_multiplier, image_angle);
	var force_y = lengthdir_y(acceleration_force * direction_multiplier, image_angle);
	physics_apply_force(x,y,force_x,force_y);
}

if keyboard_check(vk_down) // brakes
{
	phy_linear_damping = 3;
}
else {
	phy_linear_damping = 1;
}



if keyboard_check(vk_left)
{	
	physics_apply_torque(100 * turning_force * phy_speed * direction_multiplier * -1);
}
if keyboard_check(vk_right)
{
	physics_apply_torque(100 * turning_force * phy_speed * direction_multiplier);
}

image_angle %= 360;
//show_debug_message("angle {0}, speed {1}", image_angle, phy_speed);




audio_sound_pitch(my_sound_id, (phy_speed) + 1);//((phy_speed * 1.5) % 5) + 1 + (phy_speed / 3));