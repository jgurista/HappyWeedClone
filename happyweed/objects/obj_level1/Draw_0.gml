/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if (timer>0)
{
	timer=timer-1;
}
else {

	//the level "room" numbers will always start at 2
	//this "intro" level is always index 1
	//then they repeat
	
	
	
	
	if (global.currentLevel<14) {
		room_goto((global.currentLevel%14)+1); 
	}	else if ((global.currentLevel%14) == 0) {
	    room_goto(15); 
	}  else {
		level=((global.currentLevel%14)+1) 
	    room_goto(level); 
	}
}
	
	
	
draw_set_font(font_printleveltext);
draw_set_halign( fa_center);
color=make_colour_rgb(255,0,153);
draw_set_color(color);
draw_text_ext(320,60,"LEVEL",2,100);
draw_rectangle_colour(260, 120, 380, 245, color, color, color, color, false);
draw_set_font(font_printlevelnumber);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text_ext(320,105,global.currentLevel,2,100);

sprindex=-1;
if (global.currentLevel%14=0) { 
	sprindex=14;
} else {	
    sprindex=global.currentLevel%14;
}


draw_sprite_ext(spr_powerup1,sprindex,100,170,3,3,0,c_white,1);
draw_sprite_ext(spr_powerup1,sprindex,444,170,3,3,0,c_white,1);

draw_set_font(font_printcleartime);
draw_set_halign( fa_center);
draw_set_color(color);
draw_text_ext(320,270,DrugString,2,600);

image_index=0;
draw_self();