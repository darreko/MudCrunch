// space changes from Drive to Reverse
gear = gear == "D" ? "R" : "D";
direction_multiplier = gear == "D" ? 1 : -1;

show_debug_message("Switched to {0}", gear);