/// @description Draw the gun
var gun_angle = point_direction(x, y, mouse_x, mouse_y);
var x_scale = 1;
if (mouse_x < x) x_scale = -1;

draw_sprite_ext(sprite_player, 0, x, y, x_scale, 1, 0, image_blend, image_alpha);

draw_sprite_ext(sprite_gun, 0, x - (4 * x_scale), y, 1, x_scale, gun_angle, image_blend, image_alpha);

