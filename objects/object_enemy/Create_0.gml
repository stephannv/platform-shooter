/// @description Insert description here
// You can write your code in this editor
horizontal_speed = 0;
vertical_speed = 0;
movement_speed = 1;
horizontal_speed_push = 0;
vertical_speed_push = 0;
health_points = 4;
bullet_cooldown = room_speed / 2;

STATE_CHASING = 0;
STATE_ATTACKING = 1;
STATE_HURT = 2;
current_state = STATE_CHASING;

alarm[0] = bullet_cooldown;