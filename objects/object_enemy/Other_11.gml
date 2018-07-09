/// @description attack

if instance_exists(object_player) {
	if distance_to_object(object_player) >= 48 {
		current_state = STATE_CHASING;
	} else {
		if alarm[0] <= 0  {
			var shot_direction = point_direction(x, y, object_player.x, object_player.y - object_player.sprite_height / 2);
			var x_offset = lengthdir_x(20, shot_direction);
			var y_offset = lengthdir_y(20, shot_direction);

			var enemy_bullet = instance_create_layer(
				x + x_offset,
				y + y_offset,
				"Instances",
				object_enemy_bullet
			);
			enemy_bullet.direction = shot_direction;
			alarm[0] = bullet_cooldown;
		}
	}
}