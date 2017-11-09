/// @description Insert description here
// You can write your code in this editor

path_end()
grid_x = round(x / global.grid_width / global.scale_factor)
grid_y = round(y / global.grid_height / global.scale_factor)
x = grid_x * global.grid_width * global.scale_factor
y = grid_y * global.grid_height * global.scale_factor - 4 * global.scale_factor
ds_grid_set(global.map, grid_x, grid_y, 3)
