/// @description Insert description here
// You can write your code in this editor

//if not high and between 1-30, frame 1, else frame 2
modvalue = global.internal_level_timer%60;

if (!(global.isHigh)) {
	modvalue = global.internal_level_timer%60;
    if (modvalue<30) {
    image_index = 0;
    }
    else {
	image_index = 1;
	}
}
	
if (global.isHigh) {
	image_index=2;
}

draw_self();