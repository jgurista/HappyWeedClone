/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_scores,0, 0, 0);
draw_set_font(font_highscores);
draw_set_halign(fa_right);
draw_set_color(c_yellow);



//playernum = "player" + string(x);
//	   ini_write_string(playernum,"username", "meep");
//	   ini_write_real(playernum,"score",global.highscores[x]);
//	   ini_close();
	
xscorepos=320;
yscorepos=205;
xnamepos=350;
ynamepos=205;

for (x=0;x<10;x++) {
   playernum = "player" + string(x);
   draw_set_halign(fa_left);
   draw_text_ext(xnamepos,ynamepos,ini_read_string(playernum,"username","default"),2,100);
   draw_set_halign(fa_right);
   tmpscore=floor(ini_read_string(playernum,"score","default"));
   draw_text_ext(xscorepos,yscorepos,tmpscore,2,100);
   ynamepos+=20;
   yscorepos+=20;
}
