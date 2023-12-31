function draw_sprite_stacked_3d(_spr){
	var _image_number = sprite_get_number(_spr)
	for (var _i=0; _i<_image_number; _i++) {
		var _ldx = lengthdir_x(_i * CAMERA_PITCH, CAMERA_UP);
		var _ldy = lengthdir_y(_i * CAMERA_PITCH, CAMERA_UP);
		var _y = y;
		var _x = x;
		draw_sprite_ext(_spr, _i, _x+_ldx, _y+_ldy, 1, 1, image_angle, image_blend, 1)
	}
}

function draw_sprite_billboard(_spr) {
	draw_sprite_ext(_spr, image_index, x, y, 1, CAMERA_PITCH, -CAMERA_ANGLE, c_white, 1)
}

function depth_set_3d() {
	depth = dot_product(x, y, lengthdir_x(1, CAMERA_UP), lengthdir_y(1, CAMERA_UP)) - 1000
}