global.map = ds_grid_create(50,50);

global.grid_width = 16;
global.grid_height = 12;
global.scale_factor = 4;
global.tile_size = 16;

global.mpgrid = mp_grid_create(-global.tile_size / 2 * global.scale_factor, -global.tile_size / 2 * global.scale_factor, 50, 50, global.grid_width * global.scale_factor, global.grid_height * global.scale_factor);

var column;
for (column = 0; column < 50; column+=1) {
	if (column % 3 == 0) {
		ds_grid_add_region(global.map, column, 0, column, 10, 1);
	} else {
		ds_grid_add_region(global.map, column, 0, column, 49, 0);
	}
}

ds_grid_add_region(global.map, 0, 0, 49, 0, 1)

for (column = 0; column < 50; column+=1) {
	var row;
	for (row = 0; row < 50; row+=1) {
		if (ds_grid_get(global.map, column, row) == 1) {
			with instance_create_depth(column * global.grid_width * global.scale_factor, row * global.grid_height * global.scale_factor - 4 * global.scale_factor, -200 - row, obj_wall) {
				image_xscale = 4;
				image_yscale = 4;
			}
		}
	}
}

mp_grid_add_instances(global.mpgrid, obj_wall, false)

with instance_create_depth(8 * global.grid_width * global.scale_factor, 8 * global.grid_height * global.scale_factor - 4 * global.scale_factor, -200 - 8, obj_player) {
	image_xscale = 4;
	image_yscale = 4;
	camera_set_view_pos(view_camera[0], self.x - camera_get_view_width(view_camera[0]) / 2, self.y - camera_get_view_height(view_camera[0]) / 2)
	self.grid_x = 8;
	self.grid_y = 8;
	ds_grid_add(global.map, grid_x, grid_y, 2);
}

var i;
for (i=0; i<4; i+=1) {
	var xx = irandom_range(0, 20);
	var yy = irandom_range(0, 20);
	while (ds_grid_get(global.map, xx, yy) != 0) {
		xx = irandom_range(0, 20);
		yy = irandom_range(0, 20);
	}
	with instance_create_depth(xx * global.grid_width * global.scale_factor, yy * global.grid_height * global.scale_factor - 4 * global.scale_factor, -200 - yy, obj_enemy) {
		self.grid_x = xx;
		self.grid_y = yy;
	}
	ds_grid_add(global.map, xx, yy, 3);
}

<<<<<<< HEAD
with instance_create_depth(14 * global.grid_width * global.scale_factor, 4 * global.grid_height * global.scale_factor - 4 * global.scale_factor, -200 - 4, obj_enemy) {
	self.grid_x = 14;
	self.grid_y = 4;
}

with instance_create_depth(4 * global.grid_width * global.scale_factor, 14 * global.grid_height * global.scale_factor - 4 * global.scale_factor, -200 - 14, obj_enemy) {
	self.grid_x = 4;
	self.grid_y = 14;
}


=======
for (i=0; i<15; i+=1) {
	var xx = irandom_range(0, 20);
	var yy = irandom_range(0, 20);
	while (ds_grid_get(global.map, xx, yy) != 0) {
		xx = irandom_range(0, 20);
		yy = irandom_range(0, 20);
	}
	with instance_create_depth(xx * global.grid_width * global.scale_factor, yy * global.grid_height * global.scale_factor - 4 * global.scale_factor, -200 - yy, obj_healthP) {
		self.grid_x = xx;
		self.grid_y = yy;
	}
	//ds_grid_set(global.map, xx, yy, 4);
}
for (i=0; i<15; i+=1) {
	var xx = irandom_range(0, 20);
	var yy = irandom_range(0, 20);
	while (ds_grid_get(global.map, xx, yy) != 0) {
		xx = irandom_range(0, 20);
		yy = irandom_range(0, 20);
	}
	with instance_create_depth(xx * global.grid_width * global.scale_factor, yy * global.grid_height * global.scale_factor - 4 * global.scale_factor, -200 - yy, obj_damageBoost) {
		self.grid_x = xx;
		self.grid_y = yy;
	}
	//ds_grid_set(global.map, xx, yy, 5);
}



>>>>>>> f30a0be94d23fc634fbfd1917007bc0e6021bf94

