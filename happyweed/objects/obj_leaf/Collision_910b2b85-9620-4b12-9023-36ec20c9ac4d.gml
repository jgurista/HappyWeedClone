/// @description Insert description here
// You can write your code in this editor

if (collected=false){
	collected=true;
	audio_play_sound(snd_dot,1,false);
	global.hwscore=global.hwscore+10;
    global.dotsCollectedOnLevel++;
	if (global.dotsCollectedOnLevel==global.dotsLeftOnLevel) {
		if (!global.allDotsCollected) {
					global.allDotsCollected=true;
					audio_play_sound(snd_levelstartorend,1,false);
		}
	}
}

