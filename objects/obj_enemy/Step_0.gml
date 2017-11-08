/// @description Insert description here
// You can write your code in this editor

/*detects to see if the enemy was hit, deals a certain amount of damage depending on the attack or
if boosts were used.
*/

if enemyHit == true {
enemyHit = false
if global.damageBoost == 0 {

//Takes 3 regular hits to kill an enemy. Adjust if need be. 
enemyHealth -= 40
}
else if global.damageBoost > 0 {
	
//Takes 2 boosted hits to kill an enemy. Adjust if need be. 
	enemyHealth -= 50
}


//Collison box that deals damage is destroyed to stop multi hits. 
instance_destroy(obj_playerHitCollison)
}


else {
enemyHealth += 0	
}

//Enemy dies when health is 0. 
if enemyHealth <= 0 {
instance_destroy()	
}