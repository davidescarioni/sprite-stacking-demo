function draw_sprite_stacked(_spr) {
	var _y = y;
	#region Attivare se vogliamo provare a muoverre verticalmente e ruotare i modelli
		//image_angle+=2.5;
		//var _freq = 100
		//_y = ystart-1+8*sin(current_time/_freq);
		//draw_sprite_ext(_spr, 1, x, y, image_xscale, image_yscale, image_angle, c_black, .5)
	#endregion
	
	var _image_number = sprite_get_number(_spr);
	for (var _i = 0; _i < _image_number; _i++) {
		   draw_sprite_ext(_spr, _i, x, _y-_i ,image_xscale  ,image_yscale ,image_angle , image_blend  ,image_alpha )
	}
}