/// @description Insert description here
// You can write your code in this editor

eventCounter++;

	if (global.isHigh=false) {
	//happyweed dies.  play sound.  reset cop position and level.  
	//I'm not exactly sure how to do that yet.
	global.deathCooldown=60;
    global.isHwAlive=false;
	global.anyCopsDead=false;
	global.hwlives--;
	global.copResetPosition=true;
	audio_play_sound(snd_playerdeath,2,false);
	} else {
	global.anyCopsDead=true;
	isAlive=false;
	audio_play_sound(snd_copdies,1,false);
	instance_create_layer(x,y,"room3thing",obj_deadCopScore);
	global.hwscore+=500;
	}

