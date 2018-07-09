/// @description Player movement


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
	}
};


// CHECKING COLLISIONS
if place_meeting(x + horizontal_speed, y, object_solid) {
	while !place_meeting(x + sign(horizontal_speed), y, object_solid) {
		x += sign(horizontal_speed);
	};
	horizontal_speed = 0;
};

if place_meeting(x, y + vertical_speed, object_solid) {
	while !place_meeting(x, y + sign(vertical_speed), object_solid) {
		y += sign(vertical_speed);
	};
	vertical_speed = 0;	
};

// MOVE OBJECT
x += horizontal_speed;
y += vertical_speed;