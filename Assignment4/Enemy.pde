class Enemy {
  PVector position;
  PVector velocity;
  float size = 40;
  float gravity = 0.5;

  Enemy(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
  }

  void update() {
    // Apply gravity
    velocity.y += gravity;

    // Update position based on velocity
    position.add(velocity);
  }

  void display() {
    fill(255, 0, 0);  // Red color for enemy
    noStroke();
    ellipse(position.x, position.y, size, size);  // Draw enemy as a circle
  }
}
