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
    player.update();
    
    

 
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
  if (frameCount % 60 == 0) {  // Every second (60 frames), spawn a new enemy
    float spawnX = random(0, width);  // Random X position across the whole screen
    float spawnY = -50;  // Start from above the screen
    enemies.add(new Enemy(spawnX, spawnY));  // Create and add a new enemy
  }
  
  }
}
 
