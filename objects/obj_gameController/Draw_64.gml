/// @description Insert description here
// You can write your code in this editor

//GUI for player HUD

draw_text(100, 630, "Health")

draw_healthbar(100, 650, 200, 655, health, c_black, c_red,c_red,0,true,true)

draw_text(100,670, "Damage Boost Time")
draw_healthbar(100, 690, 200, 695,global.damageBoost, c_black, c_yellow,c_yellow, 0, true, true)