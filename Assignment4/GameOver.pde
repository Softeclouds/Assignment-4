class GameOver {
  GameOver(){
    
  }
  
  void display(){
    background(255);
    restartButton();
    imageMode(CORNER);
    image(restart,0,0);
  }
  void restartButton(){

    fill(100);
    rectMode(CORNERS);
    rect(262,200,536,299);
   if(mouseX >=262 && mouseX <= 536){ // checking if mouse is over the button
     if(mouseY >=200 && mouseY <=299){
      fill(240,65,106); // changing color if the mouse is over the button
       rect(262,200,536,299);
       rectMode(CENTER);
       
     if(isClick == true){
       screenState = charActive; // switch to game screen
       
       isClick = false;
    
      } // end of if start button
    } // end of if mouseY menu
  } // end of if mouseX menu
  }
  
  
}
