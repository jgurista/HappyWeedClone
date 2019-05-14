/// @description Insert description here
// You can write your code in this editor


modtimer=floor(global.internal_level_timer/600);
displaynum=modtimer%10;

if (displaynum > 0) {
  initYet=true;
}
image_index=displaynum;

if (initYet) 
{


if (global.internal_level_timer>5940) {
image_index=9;	
draw_self();
} else {
image_index=displaynum;
draw_self();
}
}



