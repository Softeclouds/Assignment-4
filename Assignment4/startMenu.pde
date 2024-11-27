class MenuScreen {
  MenuScreen(){
    
  }
  
  void drawMenu(){
    background(255);
    menuButton();
  }
  void menuButton(){
   if(mouseX >=120 && mouseX <= 280){ // checking if mouse is over the button
     if(mouseY >=180 && mouseY <=220){
      fill(240,65,106); // changing color if the mouse is over the button
       rectMode(CORNERS);
       rect(120,180,280,220);
       rectMode(CENTER);
       
     if(isClick == true){
       screenState = charActive; // switch to game screen
       // starts all the fruit counts at 0 so that it's replayable by going to the menu and back to the game /
       isClick = false;
    
      } // end of if start button
    } // end of if mouseY menu
  } // end of if mouseX menu
  }
  void bgArt(){
  
  }
  
}
