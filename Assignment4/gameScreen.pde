class GameScreen {
  GameScreen(){
    
  }
  
  void drawGame(){
    background(0);
    rectMode(CORNERS);
    platform.display(300,344);
    player.display();       // drawing the player
    player.movePlayer();    // moving the player
    player.healthCheck();
    
  }
  
  }
  void bgArt(){
  
  }
  
