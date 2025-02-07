show_debug_message("you've hit a car")

var mid_position_x = x + ((other.x - x) / 2);
var mid_position_y = y + ((other.y - y) / 2);

repeat((other.phy_col_normal_x[0] + other.phy_col_normal_y[0]) * 3)//5 + irandom(5))
{
    with (instance_create_layer(mid_position_x, mid_position_y, "Effects", obj_sparks))
    {
        physics_apply_local_impulse(irandom_range(-32,32), irandom_range(-32,32), other.phy_col_normal_x[0], other.phy_col_normal_y[0]);
    }
}