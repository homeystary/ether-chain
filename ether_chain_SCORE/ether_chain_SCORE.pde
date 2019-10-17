//ether chain
//////for any number of pitched instruments
//////////steven hixson

//INSTRUCTIONS:
//start this sketch at the same time as the other ensemble members
//adjust the pitch of your instrument to match the height of the circle
//bottom of window = lowest possible pitch, top of window = highest possible pitch
//smooth glissandos are preferred
//the piece will end when all players' circles have stopped moving (when all players
////have reached their highest possible pitch) or, if necessary, when a maximum time 
//////limit is reached


float ballPosX = 250;
float ballPosY = 687;
float check = 0;

void setup(){
  size(500, 700);
}

void draw(){
  background(0);
  fill(255);
  ellipse(ballPosX, ballPosY, 25, 25);
  if(ballPosY <= 13){
    //end (continue holding note until all others have ended)
  }
  else{
      check = random(0.00001, 100);
      if (check > map((674-ballPosY), 0, 674, 0, 25)){
          ballPosY = ballPosY-10;
          //println("Rise:" + countRise);
          delay(500);
        }
      }
  if(check <= map((674-ballPosY), 0, 674, 0, 25)){
      ballPosY = ballPosY+int(random(1, 100)); 
      delay(500);         
  }
}
        