/// @description Insert description here
// You can write your code in this editor
var target_val = ds_grid_get(global.map, self.grid_x - 1, self.grid_y)
if target_val == 0 {
	self.previous_y = camera_get_view_y(view_camera[0])
	self.previous_x = camera_get_view_x(view_camera[0])
	self.elapsed = 0
	ds_grid_set(global.map, grid_x, grid_y, 0)
	x -= global.grid_width * global.scale_factor

	self.grid_x -= 1
	ds_grid_set(global.map, grid_x, grid_y, 2)
	playerMoving = true
	with obj_enemy { event_user(0) }

}