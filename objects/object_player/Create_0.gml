/// @description Create the variables

// VARIABLES
horizontal_speed = 0;
vertical_speed = 0;
max_horizontal_speed = 4;
gravity_force = .5;
acceleration = 1;
slowdown_factor = .3;
jump_height = -8;
bullet_cooldown = room_speed / 6;
current_x_scale = image_xscale;
current_y_scale = image_yscale;

// KEYBOARD MAP
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

// BULLET COOLDOWN
alarm[0] = bullet_cooldown;