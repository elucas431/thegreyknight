
//sets player animation to ranged attack. Alarm comtrols ranged attack length. 

global.playerAction = 2
alarm[1] = room_speed / 5

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
