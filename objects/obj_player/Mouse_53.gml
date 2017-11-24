

// melee attack input on left press. Alarm sets animation length. 

global.playerAction = 1
alarm[0] = room_speed / 30

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

with obj_enemy { event_user(0) }

