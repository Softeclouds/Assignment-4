class CharScreen {
  CharScreen(){
    
  }
  
  void drawChar(){
    background(100);
    charButton1();
  }
  void charButton1(){
   if(mouseX >=120 && mouseX <= 280){ // checking if mouse is over the button
     if(mouseY >=180 && mouseY <=220){
      fill(0,255,0); // changing color if the mouse is over the button
       rectMode(CORNERS);
       rect(120,180,280,220);
       rectMode(CENTER);
       
     if(isClick == true){
       screenState = gameActive; // switch to game screen
       // starts all the fruit counts at 0 so that it's replayable by going to the menu and back to the game /
       isClick = false;
    
      } // end of if start button
    } // end of if mouseY menu
  } // end of if mouseX menu
  }
  void bgArt(){
  
  }
  
}
