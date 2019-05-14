/// @description Insert description here
// You can write your code in this editor
 draw_sprite(global.pause_sprite, 0, 0, 0);
 color=make_colour_rgb(95,255,255);
 draw_set_halign( fa_center);
 
 draw_rectangle_colour(158, 158, 502, 302, c_black, c_black, c_black, c_black, true);
 draw_rectangle_colour(159, 159, 501, 301, c_black, c_black, c_black, c_black, true);
 draw_rectangle_colour(160, 160, 500, 300, color, color, color, color, false);
 draw_rectangle_colour(160, 160, 500, 300, c_black, c_black, c_black, c_black, true);
 draw_set_color(c_black);
 
 
 draw_set_font(font_enterscore);
 
 draw_set_halign(fa_left);
 printthistext=@"Congratulations!  You have reached a";
 
   draw_text_ext(170,170,printthistext,2,320);
   draw_text_ext(170,190,"*high* score!",2,150);
   
   draw_text_ext(170,220,"Name",2,100);
   draw_rectangle_colour(220, 216, 480, 246, c_black, c_black, c_black, c_black, true);
   displayText = string_insert("|", inputText, cursorPos);
   draw_text_ext(225,220 ,displayText,2,240);
   