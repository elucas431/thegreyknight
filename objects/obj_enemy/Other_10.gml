/* game step occurred */

<<<<<<< HEAD
show_debug_message("dx: " + string(abs(self.grid_x - obj_player.grid_x)))
show_debug_message("dy: " + string(abs(self.grid_y - obj_player.grid_y)))

if (abs(self.x - obj_player.x) <= (global.grid_width + 1) * global.scale_factor && abs(self.y - obj_player.y) <= (global.grid_height + 1) * global.scale_factor) {
	with obj_player { event_user(1) }
} else {
	if mp_grid_path(global.mpgrid, path, x, y, obj_player.x, obj_player.y, 0) {
		path_start(path, global.tile_size * global.scale_factor, path_action_stop, true)
		grid_x = round(x / global.grid_width / global.scale_factor)
		grid_y = round(y / global.grid_height / global.scale_factor)
		x = grid_x * global.grid_width * global.scale_factor
		y = grid_y * global.grid_height * global.scale_factor
		alarm[0]=1
	}
}
=======
alarm[1] = 1
>>>>>>> f30a0be94d23fc634fbfd1917007bc0e6021bf94
