class GameScreen {
   
   int scoring = 1000;
   int score;
   
  GameScreen(){
   
  }
  
  void drawGame(){
    int elapsedTime = millis() - startTime;
    if (elapsedTime >= scoring) {
      score+=1;
      startTime = millis();
    
      println(score);
    }
    background(0);
    rectMode(CORNERS);
   for (Platform platform : platforms) {
    platform.display();
  }
    player.display();       // drawing the player
    player.update();
    
    
    
    PFont font;
    font = createFont("Power red and green", 15);
    textAlign(CENTER);
    textFont(font);
    textSize(50);
    fill(255);
    text("Score: " +score,100,50);
    
     for (int i = 0; i < enemies.size(); i++) {
    Enemy enemy = enemies.get(i);
    enemy.update();  // Update enemy position
    enemy.display(); // Display enemy

    // If the enemy falls off the screen, remove it
    if (enemy.position.y > height) {
      enemies.remove(i);
      i--;  // Adjust the index because we just removed an element
    }
    
      if (player.checkCollision(player, enemy)) {
      player.health -= 1;  // Reduce player's health by 1
      enemies.remove(i);   // Remove the enemy
      i--;  // Adjust the index due to removal
    }
  }
    player.healthCheck();
    spawnEnemies();
  }
  
   void spawnEnemies() {
    if(frameCount % 60 == 0){
    float spawnX = random(player.position.x -100, player.position.x +100);  // Random X position above player
    float spawnY = -50;  // Start from above the screen
    enemies.add(new Enemy(spawnX, spawnY));  // Create and add a new enemy
  }
  
  
  }
}
 
