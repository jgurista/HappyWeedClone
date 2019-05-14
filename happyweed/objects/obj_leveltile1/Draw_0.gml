/// @description Insert description here
// You can write your code in this editor

if (global.currentLevel%14=0) { 
	leveladjuster=14;
} else {	
leveladjuster=global.currentLevel%14;
}

image_index=(leveladjuster-1);
draw_self();
