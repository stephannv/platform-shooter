/// @description Insert description here
// You can write your code in this editor
var gun_angle = point_direction(x, y, mouse_x, mouse_y);
var x_scale = 1;
if (mouse_x < x) x_scale = -1;

var gun_x = x - (4 * x_scale);
var x_offset = lengthdir_x(20, gun_angle);
var y_offset = lengthdir_y(20, gun_angle);

instance_create_layer(gun_x + x_offset, y + y_offset, "Instances", object_bullet);