/// @description chasing

if instance_exists(object_player) {
	var player_direction = point_direction(x, y, object_player.x, object_player.y);
	horizontal_speed = lengthdir_x(movement_speed, player_direction);
	vertical_speed = lengthdir_y(movement_speed, player_direction);

	move();
	move_push();

	if !place_meeting(x, y, object_enemy) {
		horizontal_speed_push = lerp(horizontal_speed_push, 0, .1);
		vertical_speed_push = lerp(vertical_speed_push, 0, .1);
	}

	if health_points <= 0 {
		instance_destroy();
	}

	if distance_to_object(object_player) < 48 {
		current_state = STATE_ATTACKING;
	}
}