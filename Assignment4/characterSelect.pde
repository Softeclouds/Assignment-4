class CharScreen {
  CharScreen(){
    
  }
  
  void drawChar(){
    startTime = millis();
    score = 0;
    gameScreen.scoring = 1000;
    player.health = 3; // resetting health after a restart
    player.position = new PVector(width/2, 250);
    player.isGrounded = true;
    player.velocity = new PVector(0,0);
    astridStand = loadImage("AstridStand0.png");
    xanderStand = loadImage("XanderStand0.png");
    rectMode(CORNERS);
    noStroke();
    background(100);
    imageMode(CORNER);
    image(charSelects,0,0);
    charButton1();
    charButton2();
  }
  void charButton1(){
   
   if(mouseX >=0 && mouseX <= 399){ // checking if mouse is over the button
      fill(0,0,0,50); // changing color if the mouse is over the button
       rect(0,0,399,500);

     if(isClick == true){
       screenState = gameActive; // switch to game screen
       heroState = astrid;
       
       isClick = false;
    
      } // end of if start button
  } // end of if mouseX menu
  }
  
  void charButton2(){
   if(mouseX >=400 && mouseX <= 800){ // checking if mouse is over the button
      fill(0,0,0,50); // changing color if the mouse is over the button
       rect(400,0,800,500);

       
     if(isClick == true){
       screenState = gameActive; // switch to game screen
       heroState = xander;
       isClick = false;
    
      } // end of if start button
  } // end of if mouseX menu
  }
 
  
}
