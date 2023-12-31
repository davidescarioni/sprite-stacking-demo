// Update camera

// Rotazione camera e inclinazione
pitch_to += (keyboard_check(vk_down) - keyboard_check(vk_up)) * .1;
angle_to += (keyboard_check(vk_right) - keyboard_check(vk_left)) * 2;

// Limitiamo il pitch
pitch_to = clamp(pitch_to, pitch_min, pitch_max);

// Update pitch e camera angle
pitch = lerp(pitch, pitch_to, .1)
angle = lerp(angle, angle_to, .1)

// Update camera
// Rotazione
camera_set_view_angle(view_camera[0], angle)

// Pitch
camera_set_view_size(view_camera[0], original_width, original_height * pitch)

// Posizione
camera_set_view_pos(view_camera[0], 0, original_height * (1-pitch) * 0.5)