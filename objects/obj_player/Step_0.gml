/// @description Insert description here
// You can write your code in this editor

mouseY = mouse_y - y

if self.elapsed <= room_speed / 3 {
	var inter = cub_ease(0, room_speed / 3, elapsed)
	var inter_x = self.previous_x + ((self.x + sprite_width / 2 - camera_get_view_width(view_camera[0]) / 2 - self.previous_x) * inter)
	var inter_y = self.previous_y + ((self.y + sprite_height / 2 - camera_get_view_height(view_camera[0]) / 2 - self.previous_y) * inter)
	camera_set_view_pos(view_camera[0], inter_x, inter_y)
	elapsed += 1
}

/*Calculates hit direction for melee attacks when left mouse button is pressed. 
Calculates a vector to mouse from the player then calculates the angle of that vector in repect to the player.
direction of the attack depends on mouse angle. 
8 directions.

*/
if global.playerAction == 1 {

//Melee Direction bassed on where the mouse is i
if (playerDirection < 22.5) {
var hitCollison_obj = instance_create_layer(x+20,y-30,"Instances", obj_playerHitCollison)
sprite_index = spr_playerHitRight
}

else if (playerDirection >= 22.5 && playerDirection < 67.5 && mouseY < 0) {
var hitCollison_obj = instance_create_layer(x+20,y-55,"Instances", obj_playerHitCollison)
sprite_index = spr_playerHitUpRight
}

else if (playerDirection >= 67.5 && playerDirection < 112.5 && mouseY < 0 ) {
var hitCollison_obj = instance_create_layer(x-10,y-80,"Instances", obj_playerHitCollison)
sprite_index = spr_playerHitUp
}

else if (playerDirection >= 112.5 && playerDirection < 157.5 && mouseY < 0 ) {
var hitCollison_obj = instance_create_layer(x-75,y-55,"Instances", obj_playerHitCollison)
sprite_index = spr_playerHitUpLeft
}

else if (playerDirection >= 157.5 ) {
var hitCollison_obj = instance_create_layer(x-90,y-25,"Instances", obj_playerHitCollison)
sprite_index = spr_playerHitLeft
}

else if (playerDirection >= 112.5 && playerDirection < 157.5 && mouseY > 0 ) {
var hitCollison_obj = instance_create_layer(x-75,y,"Instances", obj_playerHitCollison)
sprite_index = spr_playerHitLeftDown
}

else if (playerDirection >= 67.5 && playerDirection < 112.5 && mouseY > 0) {
var hitCollison_obj = instance_create_layer(x-20,y+30,"Instances", obj_playerHitCollison)
sprite_index = spr_playerHitDown
}

else if (playerDirection >= 22.5 && playerDirection < 67.5 && mouseY > 0) {
var hitCollison_obj = instance_create_layer(x+15,y,"Instances", obj_playerHitCollison)
sprite_index = spr_playerHitRightDown
}


}
 
 //Right mouse press will trigger the ranged attack. Projectile will go straight to the mouse, ignoring the grid. 
 else if global.playerAction == 2 {
	 sprite_index = spr_playerRanged 
	 

 }
 
//if no actions, player idles. 
 else {
	 sprite_index = spr_player
 }
 
 //stops the attack collison box from following the player if they move mid attack. 
 if playerMoving == true{
instance_destroy(obj_playerHitCollison)	 
playerMoving = false
 }
	
	
// calculates the vector to the mouse from the player. 
var vx = mouse_x - x
var vy = mouse_y - y

var magnitude = sqrt ((vx*vx) + (vy*vy))

if (magnitude > 0) {
	
	unit_x = vx/magnitude
	unit_y = vy/magnitude
}

var radians = arctan2(-unit_y, unit_x)
playerDirection = radtodeg(radians)
playerDirection = abs(playerDirection)


//show_debug_message("Player Direction = " + string(playerDirection))
//show_debug_message("mouseY = " + string(mouseY))

//player dies when health reaches 0
if health <= 0{
instance_destroy()	
}

//stops health from going over 100 from health pickups. 
if health > 100 {
health = 100	
}