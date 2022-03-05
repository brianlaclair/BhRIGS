/// @description resize the canvas

_current_width		= window_get_width();
_current_height		= window_get_height();

// use the above values to resize what we can see and display at a native resolution

if (_current_width > 0 && _current_height > 0) {
	surface_resize(application_surface, _current_width, _current_height);
}

view_set_wport(view_current, _current_width);
view_set_hport(view_current, _current_height);
camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);

// Return the current size to our global variables, so other bhrigs functions can use the info

__bhrigs_width		= _current_width;
__bhrigs_height		= _current_height;