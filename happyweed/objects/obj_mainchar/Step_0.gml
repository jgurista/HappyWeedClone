/// @description Insert description here
// You can write your code in this editor


//update global internal level timer
global.internal_level_timer=global.internal_level_timer+1;

if (firstStep) {
	
originalX=x;
originalY=y;
firstStep=false;
//setting total number of "dots" on level to help determine when we are done.
//leaves=instance_number(obj_leaf);
//powerups=instance_number(obj_powerup1);
global.dotsLeftOnLevel=(instance_number(obj_leaf)+instance_number(obj_powerup1));



}

if 	(global.deathCooldown>0)
{
	global.deathCooldown--;
}
	


global.mcXpos=x;
global.mcYpos=y;

changedirectionok=true;

//
if (global.isHwAlive=false) {
   if (global.hwlives>0) {
   x=originalX;
   y=originalY;
   global.isHwAlive=true;
   } else {
	   global.pause_sprite=sprite_create_from_surface(application_surface,0,0,639,479,0,0,0,0);
	   //sprite_create_from_surface(application_surface,bla,bla,bla)


	   room_goto(room_recordscore);
   }
}

if ((x%32==0)&&(y%32==0))
{
	isCharacterCentered=true;
} else {
	isCharacterCentered=false;
}

if (global.deathCooldown=0) 
{
if (highDuration!=0) 
{
	highDuration--;
}

if (highDuration==1)
{
	highDuration=0;
	charspeed=1;
	global.isHigh=false;
	global.paintDeadCops=true;
	global.anyCopsDead=false;
	instance_destroy(obj_deadCopScore);
}

if (drugCooldownFrames>0)
{
	drugCooldownFrames-=1;
}



if(keyboard_check(vk_space))
{  
	if ((global.drugs>=1)&&(drugCooldownFrames=0))
	{
	  global.isHigh=true;
	  charspeed=4;
	  highDuration=180;
	  global.drugs-=1;
	  drugCooldownFrames=30;
	  audio_play_sound(snd_high,1,false);
	  
	 //positioning hack to keep "on track" -- on evens -- in case we are on an odd coordinate at the time of drug use.
	 if ((x%4)=(1)) 
	 {
		  x-=1;
	 }  else if ((x%4)=(2)) 
	 {
		 x-=2;
	 }else if ((x%4)=(3)) 
	 {
		 x-=3;
	 }
	 if ((y%4)=(1)) 
	 {
	      y-=1;
	 } else if ((y%4)=(2)) 
	 {
		 y-=2;
	 }else if ((y%4)=(3)) 
	 {
		 y-=3;
	 }
	 
	  
	  
	}
}


//if you hit a direction when Happy is uncentered
if ((keyboard_check(vk_left))&&(isCharacterCentered==false))
{   
	nextDirection="left";
} else if ((keyboard_check(vk_right))&&(isCharacterCentered==false))
{   
	nextDirection="right";
} else if ((keyboard_check(vk_down))&&(isCharacterCentered==false))
{
    nextDirection="down";
} else if ((keyboard_check(vk_up))&&(isCharacterCentered==false))
{
	nextDirection="up";
}

//if current direction is left and next direction is right, go right, don't wait for center
// and so on, all 4 possibilities
 if (  (currentDirection="left")  && (!isCharacterCentered) && (nextDirection="right")    )
 {
	 currentDirection="right";
 } else if (  (currentDirection="right")  && (!isCharacterCentered) && (nextDirection="left")    )
 {
	 currentDirection="left";
 } else if (  (currentDirection="up")  && (!isCharacterCentered) && (nextDirection="down")    )
 {
	 currentDirection="down";
 } else if (  (currentDirection="down")  && (!isCharacterCentered) && (nextDirection="up")    )
 {
	 currentDirection="up";
 }
 
 
 // I have to catch the case where the input comes in on the isCentered position and I stop moving.  what is this?





//if current direction is left  or right AND there is a tile on next direction up for NextDirection
//keep going left or right keep nextDirection in buffer
//if (   (currentDirection="right")  &&  ( (place_meeting((x+charspeed),y,obj_leveltile1)) ||  (place_meeting((x+charspeed),y,obj_cpjail)) )         )//

//if (  ((currentDirection="left")||(currentDirection="right"))  && (isCharacterCentered) && (nextDirection="up") && (place_meeting(x,(y-charspeed),obj_leveltile1) ) ) //||  (place_meeting(x,(y-charspeed),obj_cpjail))  ) )
if (  ((currentDirection="left")||(currentDirection="right"))  && (isCharacterCentered) && (nextDirection="up") && ((place_meeting(x,(y-charspeed),obj_leveltile1) ) ||  (place_meeting(x,(y-charspeed),obj_cpjail))  ) )
//  if (  ((currentDirection="left")||(currentDirection="right"))  && (isCharacterCentered) && (nextDirection="up") && ((place_meeting(x,(y-charspeed),obj_leveltile1)) || (place_meeting(x,(y-charspeed),obj_obj_cpul)) || (place_meeting(x,(y-charspeed),obj_cpur)) || (place_meeting(x,(y-charspeed),obj_cpll)) | (place_meeting(x,(y-charspeed),obj_cplr)) || (place_meeting(x,(y-charspeed),obj_0)) || (place_meeting(x,(y-charspeed),obj_1))   ))   
 //  (place_meeting(x,(y-charspeed),obj_leveltile1)) || (place_meeting(x,(y-charspeed),obj_obj_cpul)) || (place_meeting(x,(y-charspeed),obj_cpur)) || (place_meeting(x,(y-charspeed),obj_cpll)) | (place_meeting(x,(y-charspeed),obj_cplr)) || (place_meeting(x,(y-charspeed),obj_0)) || (place_meeting(x,(y-charspeed),obj_1))  
{
	 changedirectionok=false;
 }
 
 if (  ((currentDirection="left")||(currentDirection="right"))  && (isCharacterCentered) && (nextDirection="down") && ( (place_meeting(x,(y+charspeed),obj_leveltile1)) ||  (place_meeting(x,(y+charspeed),obj_cpjail))  ) )
 {
	 changedirectionok=false;
 }

if (  ((currentDirection="up")||(currentDirection="down"))  && (isCharacterCentered) && (nextDirection="right") && ((place_meeting((x+charspeed),y,obj_leveltile1) )  ||  (place_meeting(x+charspeed,y,obj_cpjail))  ) )
{
	 changedirectionok=false;
}

if (  ((currentDirection="up")||(currentDirection="down"))  && (isCharacterCentered) && (nextDirection="left") && ((place_meeting((x-charspeed),y,obj_leveltile1) )   ||  (place_meeting(x-charspeed,y,obj_cpjail))  ) )
{
	 changedirectionok=false;
}



//if you hit a direction at the exact moment when Happy is centered  -- AND CHANGEDIRECTIONOK is true
//both current and next become the same value
if (((keyboard_check(vk_left))&&(isCharacterCentered))&&(changedirectionok))
{   
	currentDirection="left";
	nextDirection="left";
	
} else if (((keyboard_check(vk_right))&&(isCharacterCentered))&&(changedirectionok))
{
	currentDirection="right";
	nextDirection="right";
} else if (((keyboard_check(vk_down))&&(isCharacterCentered))&&(changedirectionok))
{
	currentDirection="down";
    nextDirection="down";
} else if (((keyboard_check(vk_up))&&(isCharacterCentered))&&(changedirectionok))
{
	currentDirection="up";
	nextDirection="up";
}




if ((isCharacterCentered) && (changedirectionok))
{   
	//currentDirection="left";
	currentDirection=nextDirection;
}


if (currentDirection="immobile") 
{ 
//do nothing
    x=x;
	y=y;
}

//horizontal tile collision detection
//(place_meeting(x,(y-charspeed),obj_cpjail))


if (   (currentDirection="right")  &&  ( (place_meeting((x+charspeed),y,obj_leveltile1)) ||  (place_meeting((x+charspeed),y,obj_cpjail)) )         )
{
   currentDirection="immobile";
} else if (  (currentDirection="left")  &&  ((place_meeting((x-charspeed),y,obj_leveltile1)) ||  (place_meeting((x-charspeed),y,obj_cpjail) ) )    )
{
   currentDirection="immobile";
} else if (  (currentDirection="up")  &&  ((place_meeting(x,(y-charspeed),obj_leveltile1)) || (place_meeting(x,(y-charspeed),obj_cpjail) )  )      )
{
   currentDirection="immobile";
} else if (  (currentDirection="down")  &&  ( (place_meeting(x,(y+charspeed),obj_leveltile1)) || (place_meeting(x,(y+charspeed),obj_cpjail) ) )    )
{
   currentDirection="immobile";
} 

//I only want to allow the change of direction when the sprite is centered in an intersection
//What is the intersection?  What are the offsets I need to use and check?
//at this point "currentDirection" should contain the direction you want to go.  
//But I probably want to make the character skid into the intersection


if (isCharacterCentered)
{
	if(currentDirection="left") {
		x-=charspeed;
	} else if (currentDirection="right") {   
		x+=charspeed;
	} else if (currentDirection="up") {
		y-=charspeed;
	} else if (currentDirection="down") {
		y+=charspeed;
	}
} else {
	
    if(currentDirection="left") {
		x-=charspeed;
	} else if (currentDirection="right") {   
		x+=charspeed;
	} else if (currentDirection="up") {
		y-=charspeed;
	} else if (currentDirection="down") {
		y+=charspeed;
	}
}

}