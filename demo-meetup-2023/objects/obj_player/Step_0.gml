depth = -y

var _spd = 2;
var _move_x = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * _spd;
var _move_y = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * _spd;

move_and_collide(_move_x, _move_y, obj_solid)