var _spd = 2;
var _move_x = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
var _move_y = (keyboard_check(ord("S")) - keyboard_check(ord("W")));

if (_move_x != 0 || _move_y !=0) {
	var _dir = point_direction(0, 0, _move_x, _move_y) - CAMERA_ANGLE
	move_and_collide(lengthdir_x(_spd, _dir), lengthdir_y(_spd, _dir), obj_solid_demo_2)
} 