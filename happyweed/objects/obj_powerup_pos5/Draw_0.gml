/// @description Insert description here
// You can write your code in this editor
if (global.currentLevel%14=0) {
	image_index=14;
} else {
	image_index=global.currentLevel%14;
}

if (global.drugs>4) 
{ 
	draw_self();
} 
