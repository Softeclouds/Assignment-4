class GameScreen {
  GameScreen(){
    
  }
  
  void drawGame(){
    background(0);
    rectMode(CORNERS);
   for (Platform platform : platforms) {
    platform.display();
  }
    player.display();       // drawing the player
    //player.movePlayer();    // moving the player
    player.healthCheck();
    player.update();
    
  //  enemy.display();
  //  enemy.update();
  //  player.platformCheck();
    
  }
  
  }
  void bgArt(){
  
  }
  
