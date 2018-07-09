/// @description hurt

move_push();

if !place_meeting(x, y, object_enemy) {
	horizontal_speed_push = lerp(horizontal_speed_push, 0, .1);
	vertical_speed_push = lerp(vertical_speed_push, 0, .1);
}

if point_distance(0, 0, horizontal_speed_push, vertical_speed_push) < 1 {
	current_state = STATE_CHASING;
}