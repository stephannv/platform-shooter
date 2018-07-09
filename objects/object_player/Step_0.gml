/// @description Player movement

if health_points <= 0 {
	instance_destroy();
}
// USER INPUT
var horizontal_speed_factor = keyboard_check(vk_right) - keyboard_check(vk_left)

if horizontal_speed_factor != 0 {
	horizontal_speed += horizontal_speed_factor * acceleration;
	horizontal_speed = clamp(horizontal_speed, -max_horizontal_speed, max_horizontal_speed);
} else {
	horizontal_speed = lerp(horizontal_speed, 0, slowdown_factor); 
};

// GRAVITY
if !place_meeting(x, y + 1, object_solid) {
	vertical_speed += gravity_force;
} else {
	if keyboard_check(vk_up) {
		vertical_speed = jump_height;
		current_x_scale = image_xscale * .8;
		current_y_scale = image_yscale * 1.4;
	}
};

move();

if place_meeting(x, y+1, object_solid) && !place_meeting(x, yprevious + 1, object_solid) {
	current_x_scale = image_xscale * 1.2;
	current_y_scale = image_yscale * .8;
}

// Back scale to normal
current_x_scale = lerp(current_x_scale, image_xscale, .1);
current_y_scale = lerp(current_y_scale, image_yscale, .1);