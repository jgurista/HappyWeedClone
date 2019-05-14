/// @description Insert description here
// You can write your code in this editor


drawindex=-1;

if (global.currentLevel%14=0) { 
	drawindex=14;
} else {	
drawindex=global.currentLevel%14;
}



if (!collected)
{
	image_index=drawindex;
	draw_self();
}

	 
	 
	 
