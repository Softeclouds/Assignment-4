class GameScreen {
   
   int scoring = 1000;
   int spawner = 1000;
   int score;
   
  GameScreen(){
    startTime = millis();
  }
  
  void drawGame(){
    int elapsedTime = millis() - startTime;
    if (elapsedTime > scoring) {
      scoring += 1000;
      startTime = millis();
      score = scoring/1000;
      println(score);
    }
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

    int elapsedTime = millis() - startTime;
  if (elapsedTime > spawner) {  
    
    float spawnX = random(0, width);  // Random X position across the whole screen
    float spawnY = -50;  // Start from above the screen
    enemies.add(new Enemy(spawnX, spawnY));  // Create and add a new enemy
  }
  
  }
}
 
