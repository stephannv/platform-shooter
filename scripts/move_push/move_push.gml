if place_meeting(x + horizontal_speed_push, y, object_solid) {
	while !place_meeting(x + sign(horizontal_speed_push), y, object_solid) {
		x += sign(horizontal_speed_push);
	};
	horizontal_speed_push = 0;
};
x += horizontal_speed_push;

if place_meeting(x, y + vertical_speed_push, object_solid) {
	while !place_meeting(x, y + sign(vertical_speed_push), object_solid) {
		y += sign(vertical_speed_push);
	};
	vertical_speed_push = 0;	
};
y += vertical_speed_push;