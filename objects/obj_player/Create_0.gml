<<<<<<< HEAD
<<<<<<< HEAD
/// @description Insert description here
// You can write your code in this editor

 global.playerAction = 0
 canMelee = 1 
=======
=======
>>>>>>> f30a0be94d23fc634fbfd1917007bc0e6021bf94

/*playerAction numbers:
0: Idle
1: Melee 
2: Ranged
....
*/

//playerMoving variable is attached to all movement code as true.

//player starts in idle 
 global.playerAction = 0
playerMoving = false 
health = 100
<<<<<<< HEAD
>>>>>>> 5ccfbfb25e392ecb722d38165f52fcdb54118462
=======
>>>>>>> f30a0be94d23fc634fbfd1917007bc0e6021bf94
 


self.elapsed = room_speed
self.grid_x = floor(x / global.grid_width / global.scale_factor)
self.grid_y = floor(y / global.grid_height / global.scale_factor)
self.previous_x = camera_get_view_x(view_camera[0])
self.previous_y = camera_get_view_y(view_camera[0])