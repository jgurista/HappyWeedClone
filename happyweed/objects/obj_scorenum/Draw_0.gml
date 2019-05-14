/// @description Insert description here
// You can write your code in this editor



levelholder=global.hwscore;
//draw_sprite(spr_levelnums, 0, 224, 416);


//987650
arrayindex=0;

while (levelholder > 0) {
	 myarray[arrayindex]=levelholder%10;
	 levelholder=floor(levelholder/10);
	 arrayindex++;
}
	 
	 arrayindex--;
	 //arrayindex now is one ahead of where it needs to be.
	 //arrayindex--;
	 //arrayindex now holds the index of the largest number.
	 //arrayindex can only be:  values 0-5.  We are holding 6 digits for score.
     if (arrayindex=1)
	 {
		//tens=arrayindex-1;
		draw_sprite(spr_scorenums, myarray[arrayindex], 224, 416);
		draw_sprite(spr_scorenums, myarray[arrayindex-1],256, 416);
	 } 
     if (arrayindex=2)
	 {
		//tens=arrayindex-1;
		draw_sprite(spr_scorenums, myarray[arrayindex], 224, 416);
		draw_sprite(spr_scorenums, myarray[arrayindex-1],256, 416);
		draw_sprite(spr_scorenums, myarray[arrayindex-2],288, 416);
	 } 
     if (arrayindex=3)
	 {
		//tens=arrayindex-1;
		draw_sprite(spr_scorenums, myarray[arrayindex], 224, 416);
		draw_sprite(spr_scorenums, myarray[arrayindex-1],256, 416);
	    draw_sprite(spr_scorenums, myarray[arrayindex-2],288, 416);
        draw_sprite(spr_scorenums, myarray[arrayindex-3],320, 416);
	 } 
     if (arrayindex=4)
	 {
		//tens=arrayindex-1;
		draw_sprite(spr_scorenums, myarray[arrayindex], 224, 416);
		draw_sprite(spr_scorenums, myarray[arrayindex-1],256, 416);
	    draw_sprite(spr_scorenums, myarray[arrayindex-2],288, 416);
        draw_sprite(spr_scorenums, myarray[arrayindex-3],320, 416);
		draw_sprite(spr_scorenums, myarray[arrayindex-4],352, 416);
	 } 
     if (arrayindex=5)
	 {
		//tens=arrayindex-1;
		draw_sprite(spr_scorenums, myarray[arrayindex], 224, 416);
		draw_sprite(spr_scorenums, myarray[arrayindex-1],256, 416);
		draw_sprite(spr_scorenums, myarray[arrayindex-2],288, 416);
        draw_sprite(spr_scorenums, myarray[arrayindex-3],320, 416);
		draw_sprite(spr_scorenums, myarray[arrayindex-4],352, 416);
		draw_sprite(spr_scorenums, myarray[arrayindex-5],384, 416);
	 } 

	 
	 
	
		 