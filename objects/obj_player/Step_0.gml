//show_debug_message("intended speed {0}", intended_speed);

if (keyboard_check(vk_up) && !grinding_gears)
{
	if ((intended_speed < 7 && gear == "D") || (intended_speed > -7 && gear == "R")) {
		motion_add(image_angle, 0.1 * direction_multiplier);
		intended_speed = speed * direction_multiplier;
	}
}
else if (speed >= 0.05) {
	speed -= 0.05;
	intended_speed = abs(speed) * direction_multiplier;
}
else if (speed <= -0.05) {
	speed += 0.05;
	intended_speed = abs(speed) * direction_multiplier;
}
else {
	speed = 0;
	intended_speed = 0;
	grinding_gears = false;
}
	
if (speed > 7) {
	show_debug_message("How is speed {0}", speed);
}

if keyboard_check(vk_down)
{
	//show_debug_message("pressing brakes, intended speed is {0}, speed is {1}", intended_speed, speed);
	if (abs(speed) >= 0.1) {
		speed = speed > 0 ? speed - 0.1 : speed + 0.1;
		intended_speed = speed * direction_multiplier;
	}
	else {
		speed = 0;
		intended_speed = 0;
	}
}

//show_debug_message("A intended angle {0}, speed {1}, intended speed {2}", intended_angle, speed, intended_speed);

if keyboard_check(vk_left)
{
	var angle_change = direction_multiplier > 0 ? min(intended_speed, 3) : max(intended_speed, -3);
	image_angle += grinding_gears ? angle_change * -1 : angle_change;
	intended_angle = image_angle;
	motion_set(image_angle, grinding_gears ? speed : intended_speed);
	//show_debug_message("image angle change {0}", angle_change);
}
if keyboard_check(vk_right)
{
	var angle_change = direction_multiplier > 0 ? min(intended_speed, 3) : max(intended_speed, -3);
	image_angle -= grinding_gears ? angle_change * -1 : angle_change;
	intended_angle = image_angle;
	motion_set(image_angle, grinding_gears ? speed : intended_speed);
	//show_debug_message("image angle change {0}", angle_change);
}

image_angle %= 360;
intended_angle %= 360;

move_wrap(true, true, 0)