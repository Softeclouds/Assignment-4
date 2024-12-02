class GameScreen {
  GameScreen(){
    
  }
  
  void drawGame(){
    background(0);
    rectMode(CORNERS);
    platforms[0].display();
    platforms[1].display();
    player.display();       // drawing the player
    player.movePlayer();    // moving the player
    player.healthCheck();
    player.update();
    player.platformCheck();
    
  }
  
  }
  void bgArt(){
  
  }
  
