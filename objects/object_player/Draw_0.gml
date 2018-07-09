/// @description Draw the gun
var gun_angle = point_direction(x, y, mouse_x, mouse_y);
var x_scale = 1;
if (mouse_x < x) x_scale = -1;

draw_sprite_ext(sprite_player, 0, x, y, current_x_scale * x_scale, current_y_scale, 0, image_blend, image_alpha);

draw_sprite_ext(sprite_gun, 0, x - (4 * x_scale), y - sprite_height * .5 , 1, x_scale, gun_angle, image_blend, image_alpha);

