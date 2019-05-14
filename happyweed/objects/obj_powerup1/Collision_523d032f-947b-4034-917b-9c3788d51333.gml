/// @description Insert description here
// You can write your code in this editor
if (collected=false){
	collected=true;
	audio_play_sound(snd_drugpickup,1,false);
	global.drugs+=1;
	global.dotsCollectedOnLevel++;
	if (global.dotsCollectedOnLevel==global.dotsLeftOnLevel) {
		if (!global.allDotsCollected) {
					global.allDotsCollected=true;
					audio_play_sound(snd_levelstartorend,1,false);
		}
	}
}


