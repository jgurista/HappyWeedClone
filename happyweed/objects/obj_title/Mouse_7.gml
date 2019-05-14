/// @description Insert description here
// You can write your code in this editor


if (point_in_rectangle(mouse_x, mouse_y, 436, 234, 545, 291)) {
	room_goto(level1_intro);
}
 
 
 if (point_in_rectangle(mouse_x, mouse_y, 491, 326, 602, 344)) {
    game_end();
}
 
 
 
 if (point_in_rectangle(mouse_x, mouse_y, 371, 303, 483, 320)) {
    room_goto(room_instructions);
}
 
 
 
 if (point_in_rectangle(mouse_x, mouse_y, 372, 326, 483, 344)) {
    room_goto(room_highscores);
}
 
 
  
 if (point_in_rectangle(mouse_x, mouse_y, 490, 303, 604, 320)) {
    room_goto(room_setspeed);
}