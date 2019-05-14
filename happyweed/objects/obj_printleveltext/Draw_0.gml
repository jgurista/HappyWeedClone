/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_printleveltext);
draw_set_halign( fa_center);
draw_set_color(c_blue);
draw_text_ext(320,60,"LEVEL",2,100);
draw_rectangle_colour(275, 120, 365, 245, c_blue, c_blue, c_blue, c_blue, false);
draw_set_font(font_printlevelnumber);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text_ext(320,105,global.currentLevel,2,100);
draw_set_font(font_printcleartime);
draw_set_halign( fa_center);
draw_set_color(c_blue);
clearseconds=floor(global.internal_level_timer/60);
textstring="cleared in " + string(clearseconds) + " seconds";
 draw_text_ext(320,270,textstring,2,600);

if (roomScoreTimer==1) {
	originalDrugValue=global.drugs;
}
	
// if clearseconds<60 player gets a bonus
if (clearseconds<60) {
	

	
	if ((roomScoreTimer>20)&&(roomScoreTimer<80)) {
		draw_set_font(font_printtimebonus);
		draw_set_halign( fa_center);
		//light blue
		draw_set_color(make_colour_rgb(19,148,233));
		timebonus=(60-clearseconds)*100;
		textstring=string(timebonus) + " points awarded";
		draw_text_ext(320,310,textstring,2,600);
	} else if ((roomScoreTimer>=80)&&(roomScoreTimer<280)) {
		draw_set_font(font_printtimebonus);
		draw_set_halign( fa_center);
		//light blue
		draw_set_color(make_colour_rgb(19,148,233));
		timebonus=(60-clearseconds)*100;
		scoreCountUp+=1;
		minusvalue=floor(scoreCountUp/4);
		minusvalue*=100;
		timebonus-=minusvalue;
		if (timebonus>0) {
		textstring=string(timebonus) + " points awarded";
		
		if (((roomScoreTimer%20)==0)&&(timebonus>=0)){
			audio_play_sound(snd_dot,1,false);
			}
		draw_text_ext(320,310,textstring,2,600);

			if (((roomScoreTimer%4)==0)&&(minusvalue>=0)) {
			  global.hwscore=global.hwscore+100;
			}
		} else if (timebonus<=0){ 
		textstring="0000 points awarded";
		draw_text_ext(320,310,textstring,2,600);
		}	
	}
} else {
	//in this case player took 60 seconds or more to finish.  No bonus.
	if ((roomScoreTimer>20)&&(roomScoreTimer<280)) {
		draw_set_font(font_printtimebonus);
		draw_set_halign( fa_center);
		//light blue
		draw_set_color(make_colour_rgb(207,55,136));
		textstring="No Time Bonus - Exceeded 60 seconds";
		draw_text_ext(320,310,textstring,2,600);
	}
}

if (roomScoreTimer==280) {
   drugCountHolder=global.drugs;
}

if ((originalDrugValue<=0)&&(roomScoreTimer>=280)&&(roomScoreTimer<400)) {
	draw_set_font(font_printtimebonus);
	draw_set_halign( fa_center);
	//light blue
	draw_set_color(make_colour_rgb(207,55,136));
	textstring="No drug bonus this time.";
	draw_text_ext(320,310,textstring,2,600);
	if (roomScoreTimer==310) {
	 //i will need to change this to loop once I'm done with this stuff.
	}
}



if ((drugCountHolder>0)&&(roomScoreTimer>=280)&&(roomScoreTimer<304)) {
// count down drugs.  2 sec, fast.
// The most we can have is 4.  This is if you somehow manage to
// not use any drugs on the entire level.
// this happens if there is at least one
    totalbonus=drugCountHolder*(500*global.currentLevel);
	draw_set_font(font_printtimebonus);
	draw_set_halign( fa_center);
	draw_set_color(c_yellow);
	textstring=string(totalbonus)+" points awarded.";
	draw_text_ext(320,310,textstring,2,600);
	if (roomScoreTimer==303) {
		audio_play_sound(snd_drugpickup,1,false);
		global.hwscore=global.hwscore+(global.currentLevel*500);
		global.drugs--;
	}
	
} else if ((drugCountHolder>1)&&(roomScoreTimer>=304)&&(roomScoreTimer<328)) {
//this happens if there is at least 2
    totalbonus=(drugCountHolder-1)*(500*global.currentLevel);
	if (totalbonus>0) {
		draw_set_font(font_printtimebonus);
	    draw_set_halign( fa_center);
	    draw_set_color(c_yellow);
        textstring=string(totalbonus)+" points awarded.";
		draw_text_ext(320,310,textstring,2,600);
	} else if (totalbonus==0) {
		draw_set_font(font_printtimebonus);
	    draw_set_halign( fa_center);
	    draw_set_color(c_yellow);
        textstring="0000 points awarded.";
		draw_text_ext(320,310,textstring,2,600);
	}
	if (roomScoreTimer==327) {
		audio_play_sound(snd_drugpickup,1,false);
		global.hwscore=global.hwscore+(global.currentLevel*500);
		global.drugs--;
	}
	
} else if ((drugCountHolder>2)&&(roomScoreTimer>=328)&&(roomScoreTimer<352)) {
//this happens if there is at least 3
	totalbonus=(drugCountHolder-2)*(500*global.currentLevel);
	if (totalbonus>0) {
		draw_set_font(font_printtimebonus);
	    draw_set_halign( fa_center);
	    draw_set_color(c_yellow);
        textstring=string(totalbonus)+" points awarded.";
		draw_text_ext(320,310,textstring,2,600);
	} else if (totalbonus=0) {
		draw_set_font(font_printtimebonus);
	    draw_set_halign( fa_center);
	    draw_set_color(c_yellow);
        textstring="0000 points awarded.";
		draw_text_ext(320,310,textstring,2,600);
	}
	if (roomScoreTimer==351) {
		audio_play_sound(snd_drugpickup,1,false);
		global.hwscore=global.hwscore+(global.currentLevel*500);
		global.drugs--;
	}
} else if ((drugCountHolder>3)&&(roomScoreTimer>=352)&&(roomScoreTimer<376)) {
//this happens if there is at least 4
	totalbonus=(drugCountHolder-3)*(500*global.currentLevel);
	if (totalbonus>0) {
		draw_set_font(font_printtimebonus);
	    draw_set_halign( fa_center);
	    draw_set_color(c_yellow);
        textstring=string(totalbonus)+" points awarded.";
		draw_text_ext(320,310,textstring,2,600);
	} else if (totalbonus=0) {
		draw_set_font(font_printtimebonus);
	    draw_set_halign( fa_center);
	    draw_set_color(c_yellow);
        textstring="0000 points awarded.";
		draw_text_ext(320,310,textstring,2,600);
	}
	if (roomScoreTimer==375) {
		audio_play_sound(snd_drugpickup,1,false);
		global.hwscore=global.hwscore+(global.currentLevel*500);
		global.drugs--;
	}
}else if ((drugCountHolder>4)&&(roomScoreTimer>=376)&&(roomScoreTimer<388)) {
//this happens if there is 5
	totalbonus=(drugCountHolder-4)*(500*global.currentLevel);
	if (totalbonus>0) {
		draw_set_font(font_printtimebonus);
	    draw_set_halign( fa_center);
	    draw_set_color(c_yellow);
        textstring=string(totalbonus)+" points awarded.";
		draw_text_ext(320,310,textstring,2,600);
	} else if (totalbonus=0) {
		draw_set_font(font_printtimebonus);
	    draw_set_halign( fa_center);
	    draw_set_color(c_yellow);
        textstring="0000 points awarded.";
		draw_text_ext(320,310,textstring,2,600);
	}
	if (roomScoreTimer==387) {
		audio_play_sound(snd_drugpickup,1,false);
		global.hwscore=global.hwscore+(global.currentLevel*500);
		global.drugs--;
	}
} else if ((global.drugs==0) && (roomScoreTimer<400)&& (roomScoreTimer>280) && (originalDrugValue!=0)) {
		draw_set_font(font_printtimebonus);
	    draw_set_halign( fa_center);
	    draw_set_color(c_yellow);
        textstring="0000 points awarded.";
		draw_text_ext(320,310,textstring,2,600);
}




if (roomScoreTimer==400) {
	 //i will need to change this to loop once I'm done with this stuff.
	   
	   global.currentLevel++;
	   global.drugs=5;
	   room_goto(1);  //we are always going to the generic "intro" room which will display the level and graphics and then goto the correct actual level
	}