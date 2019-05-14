global.hwlives=1;
global.currentLevel=1;
global.hwscore=0;



for (x=0;x<10;x++) {
global.highscores[x]=0;
}


if file_exists("highscores.ini")
   {
   // do some stuff
   } else
   {
	   // file doesn't exist, let's create it and populate it with 0 array data
       for (x=0;x<10;x++) {
       ini_open("highscores.ini");
       playernum = "player" + string(x);
	   ini_write_string(playernum,"username", "meep");
	   ini_write_real(playernum,"score",global.highscores[x]);
	   ini_close();
	   } //end for
   } //end else
   
   

   
//myscore=10000;
//ini_open("highscores.ini");
//ini_write_string("player1","username", "meep");
//ini_write_real("player1","score", myscore);
//ini_close();