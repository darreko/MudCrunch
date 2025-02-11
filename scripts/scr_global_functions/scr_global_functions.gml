function GetCollisionDamage(obj1, obj2){
	var impact_x = obj1.previous_speed_x - obj2.previous_speed_x;
	var impact_y = obj1.previous_speed_y - obj2.previous_speed_y;
	var impact_total_real = abs(impact_x + impact_y); // absolute value since the total can be negative.
	var impact_total = int64(impact_total_real);
	
	// TODO: use the mass of the objects to determine who gets some damage and how much?
	
	if (impact_total > 1) {	
		var mid_position_x = x + ((other.x - x) / 2);
		var mid_position_y = y + ((other.y - y) / 2);
	
		var text_splash = instance_create_layer(mid_position_x, mid_position_y, "Effects", obj_text_splash);
		text_splash.text = impact_total;
	}
}