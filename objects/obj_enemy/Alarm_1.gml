/// @description Insert description here
// You can write your code in this editor

if (abs(self.x - obj_player.x) <= (global.grid_width + 1) * global.scale_factor && abs(self.y - obj_player.y) <= (global.grid_height + 1) * global.scale_factor) {
	with obj_player { event_user(1) }
} else {
	if mp_grid_path(global.mpgrid, path, x, y, obj_player.x, obj_player.y, 0) {
		ds_grid_set(global.map, grid_x, grid_y, 0)
		path_start(path, global.grid_height * global.scale_factor, path_action_stop, true)
		
		alarm[0]=1
	}
}