/// @description Insert description here
// You can write your code in this editor
var other_direction = point_direction(other.x, other.y, x, y);
horizontal_speed_push += lengthdir_x(.25, other_direction);
vertical_speed_push += lengthdir_y(.25, other_direction);