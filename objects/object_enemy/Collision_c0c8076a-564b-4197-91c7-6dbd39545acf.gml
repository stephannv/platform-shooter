/// @description Insert description here
// You can write your code in this editor
health_points -= 1; 
instance_destroy(other);
current_state = STATE_HURT;
var push_direction = other.direction;
horizontal_speed_push = lengthdir_x(4, push_direction);
vertical_speed_push = lengthdir_y(4, push_direction);