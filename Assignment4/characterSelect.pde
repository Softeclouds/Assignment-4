class CharScreen {
  CharScreen(){
    
  }
  
  void drawChar(){
    rectMode(CORNERS);
    noStroke();
    background(100);
    image(charSelects,0,0);
    charButton1();
    charButton2();
  }
  void charButton1(){
   
   if(mouseX >=0 && mouseX <= 399){ // checking if mouse is over the button
   println("mouse left");
      fill(0,0,0,50); // changing color if the mouse is over the button
       rect(0,0,399,500);

     if(isClick == true){
       screenState = gameActive; // switch to game screen
       
       isClick = false;
    
      } // end of if start button
  } // end of if mouseX menu
  }
  
  void charButton2(){
   if(mouseX >=400 && mouseX <= 800){ // checking if mouse is over the button
      println("mouse right");
      fill(0,0,0,50); // changing color if the mouse is over the button
       rect(400,0,800,500);

       
     if(isClick == true){
       screenState = gameActive; // switch to game screen
       // starts all the fruit counts at 0 so that it's replayable by going to the menu and back to the game /
       isClick = false;
    
      } // end of if start button
  } // end of if mouseX menu
  }
 
  
}