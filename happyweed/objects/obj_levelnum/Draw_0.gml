/// @description Insert description here
// You can write your code in this editor





//figure out what to draw in 100's position

//floor levelnum/100

//floor levelnum/10

//%10

//100s position
hundredindex=floor(global.currentLevel/100);
draw_sprite(spr_levelnums,hundredindex, 0, 0);

tenindex=floor(global.currentLevel/10);
draw_sprite(spr_levelnums,tenindex, 32, 0);

singledigitindex=global.currentLevel%10;
draw_sprite(spr_levelnums,singledigitindex,64,0)
