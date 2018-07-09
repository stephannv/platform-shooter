if place_meeting(x + horizontal_speed, y, object_solid) {
	while !place_meeting(x + sign(horizontal_speed), y, object_solid) {
		x += sign(horizontal_speed);
	};
	horizontal_speed = 0;
};
x += horizontal_speed;

if place_meeting(x, y + vertical_speed, object_solid) {
	while !place_meeting(x, y + sign(vertical_speed), object_solid) {
		y += sign(vertical_speed);
	};
	vertical_speed = 0;	
};
y += vertical_speed;