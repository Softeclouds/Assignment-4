class CharScreen {
  CharScreen(){
    
  }
  
  void drawChar(){
    background(100);
    charButton1();
    charButton2();
  }
  void charButton1(){
    rectMode(CORNERS);
    fill(255, 152, 254);
    rect(0,0,399,500);
   if(mouseX >=0 && mouseX <= 399){ // checking if mouse is over the button
   println("mouse left");
      fill(0,0,0,50); // changing color if the mouse is over the button
       rect(0,0,399,500);
       rectMode(CENTER);
       
     if(isClick == true){
       screenState = gameActive; // switch to game screen
       
       isClick = false;
    
      } // end of if start button
  } // end of if mouseX menu
  }
  
  void charButton2(){
    rectMode(CORNERS);
    fill(152, 239, 255);
    rect(400,0,800,500);
   if(mouseX >=400 && mouseX <= 800){ // checking if mouse is over the button
      println("mouse right");
      fill(0,0,0,50); // changing color if the mouse is over the button
       
       rect(400,0,800,500);
       rectMode(CENTER);
       
     if(isClick == true){
       screenState = gameActive; // switch to game screen
       // starts all the fruit counts at 0 so that it's replayable by going to the menu and back to the game /
       isClick = false;
    
      } // end of if start button
  } // end of if mouseX menu
  }
  void bgArt(){
  
  }
  
}
