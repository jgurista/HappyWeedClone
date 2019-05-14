/// @description Insert description here
// You can write your code in this editor
if (!global.allDotsCollected) {
image_index=0;
draw_self();


} else if ((global.allDotsCollected)&&(global.exitAnimationTimer >0)) {
	frameToDisplay=floor(global.exitAnimationTimer/4);
	
    global.exitAnimationTimer--;	
      if (global.exitAnimationTimer<4) {
		  global.exitAnimationTimer=0;
	  }
	  image_index=frameToDisplay;
	  draw_self();
} else {
	image_index=16;
	draw_self();
}
