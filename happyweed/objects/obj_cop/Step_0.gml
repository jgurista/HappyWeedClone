/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
 
if (firstStep) {
	
originalX=x;
originalY=y;
firstStep=false;
}

if (global.copResetPosition) {
	  if (global.copCounterForResetPosition>0) {
      x=originalX;
      y=originalY;
      global.copCounterForResetPosition--;
	    if (global.copCounterForResetPosition=0) {
        global.copResetPosition=false;
        global.copCounterForResetPosition=3;
        }
	  }
} else {
if (!(global.deathCooldown>0)) {
	
if (!global.isHigh) {

	global.paintDeadCops=false;
	isAlive=true;//end isHigh section, resetting to cop jail etc.
		
  if ((x%32==0)&&(y%32==0))
  {
	isCPCentered=true;
  } else {
  	isCPCentered=false;
  }

  if (startCounter>0) {
	startCounter--;
  } 

//newdirection=irandom(4);

//cops will be centered at the start.  they should only change direction when they hit a wall.  

//global.mcXpos;
//moveArray=null;
//global=mcYpos;
  if (startCounter=0)
  {
	

   if (isCPCentered)
   {   //Figure out which directions are possible.

     moveindex=0;
	 
     if  (!(place_meeting(x+1,y,obj_leveltile1))) {
		   moveArray[moveindex]=1;
		   moveindex++; 
	 } 
     if (!(place_meeting(x-1,y,obj_leveltile1))) {
		   moveArray[moveindex]=0;
		   moveindex++; 
	 }
	 if (!(place_meeting(x,y-1,obj_leveltile1))) {
		   moveArray[moveindex]=2;
		   moveindex++; 
	 }
	 if (!(place_meeting(x,y+1,obj_leveltile1))) {
		   moveArray[moveindex]=3;
		   moveindex++;
	 }
	   moveindex--;
	   
	   cdok=irandom(9);
	   if (cdok>6) 
	   {
		   changeDirection=true;
	   } else changeDirection=false;
	   
	   isBlockedOnCurrentDir=false;
	   if ((moveDirection=0) && (place_meeting(x-1,y,obj_leveltile1))) {
		   isBlockedOnCurrentDir=true;
	   } else if ((moveDirection=1) && (place_meeting(x+1,y,obj_leveltile1))) {
		   isBlockedOnCurrentDir=true;
	   } else if ((moveDirection=2) && (place_meeting(x,y-1,obj_leveltile1))) {
		   isBlockedOnCurrentDir=true;
	   } else if ((moveDirection=3) && (place_meeting(x,y+1,obj_leveltile1))) {
		   isBlockedOnCurrentDir=true;
	   }
	   
	   if (isBlockedOnCurrentDir=true) {
		   	   newDirection = moveArray[irandom(moveindex)];  //will return a value inclusive between 0 and 3, this represents the new direction to go in.  Maybe.  
	   } 
	   else {
		   
		   //here is where we could track the hw using global vars
		   if ((global.mcXpos>x) && (!(place_meeting(x+1,y,obj_leveltile1)))) {
		  	   newDirection=1;
		   } else if ((global.mcXpos<x) && (!(place_meeting(x-1,y,obj_leveltile1)))) {
		       newDirection=0;
		   } else if ((global.mcYpos<y) && (!(place_meeting(x,y-1,obj_leveltile1)))) {
		       newDirection=2;
		   } else if ((global.mcYpos>y) && (!(place_meeting(x,y+1,obj_leveltile1)))) {
		       newDirection=3;
		   } 
			   
		   //newDirection=moveDirection;
	   }
	   
	   
	   
	   
	   //what direction are we going in
	   //is it even possible to keep going?  If not, then we just do the random thing
	   //if yes, then 
	 //  newDirection = moveArray[irandom(moveindex)];  //will return a value inclusive between 0 and 3, this represents the new direction to go in.  Maybe.  
	   //It's a possible direction.
	   
	
	 switch (newDirection) 
      {
	    case "0":
		  x--;
		  prevDirection=moveDirection;
		  moveDirection=newDirection;
	      break;
		case "1":
		  x++;
		  prevDirection=moveDirection;
		  moveDirection=newDirection;
		  break;
		case "2":
		  y--;
		  prevDirection=moveDirection;
		  moveDirection=newDirection;
		  break;
		case "3":
		  y++;
		  prevDirection=moveDirection;
		  moveDirection=newDirection;
		  break;
      } 
	  
   } else { 
	   // The cop is not centered, movement is chosen.  Just move him.
   
     switch (moveDirection) 
      {
	    case "0":
		  x--;
	      break;
		case "1":
		  x++;
		  break;
		case "2":
		  y--;
		  break;
		case "3":
		  y++;
		  break;
      } 
   } //end isCPCentered
 } //end cooldown=0
 
} else if ((global.isHigh)&&(!isAlive)) {

  x=global.jailX;
  y=global.jailY;
 
 }
} //end if ((!(global.deathCooldown>0))
} //end resetPosition