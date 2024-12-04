class Player {
  PVector position;
  PVector velocity;
  float sHeight = 44;
  float sWidth = 18;
  boolean onGround;
  int health = 20;

  boolean isLeft;  // a key
  boolean isRight; // d key
  boolean isGrounded;
  boolean isJumping;

  int speed;
  PVector jumpStrength;
  float gravity = 0.5;

  Player() {
    position = new PVector(width / 2, 250);
    velocity = new PVector(0, 0);
    isGrounded = false;
    jumpStrength = new PVector(0, -10);
  }

  void move(int k, boolean b) {
    if (k == 'A') {
      isLeft = b;
    } else if (k == 'D') {
      isRight = b;
    } else if (k == 'W' && isGrounded) {
      isJumping = true;
      isGrounded = false;
      velocity.add(jumpStrength);
    }
    else if(k == 'R') {health = health-5;}
    else if(k == 'Q') {isShift = true;}
  }
 void healthCheck(){
  if(health <= 0 || position.y > 500) {
    screenState = failedActive;
  }
}
  void update() {
    if(isShift) {speed = 5;}
    else if (!isShift) {speed = 3;}
    
    // Horizontal movement
    if (isLeft) {
      position.x -= speed; // Speed for moving left
    }
    if (isRight) {
      position.x += speed; // Speed for moving right
    }

    // Apply gravity
    if (!isGrounded) {
      velocity.y += gravity;
    }

    // Update position
    position.add(velocity);

    // Reset grounded state
    isGrounded = false;

    // Check for collisions with platforms
    for (Platform platform : platforms) {
      if (platform.checkCollision(position, sWidth, sHeight)) {
        isGrounded = true;

        // Snap player to the top of the platform
        position.y = platform.y - platform.h / 2 - sHeight / 2;

        // Reset vertical velocity
        velocity.y = 0;

        break; // Exit the loop once a platform is detected
      }
    }

    
  }

  void display() {
    fill(255);
    noStroke();
    imageMode(CENTER);
    if(heroState == astrid) {image(astridStand,player.position.x,player.position.y);}
    else if(heroState == xander) {image(xanderStand,player.position.x,player.position.y);}
    
  }
}


class Platform {
  float x, y, w, h;

  Platform(float posX, float posY, float wid, float hei) {
    x = posX;
    y = posY;
    w = wid;
    h = hei;
  }

  void display() {
    rectMode(CENTER);
    fill(100, 200, 100);
    rect(x, y, w, h);
  }

  boolean checkCollision(PVector playerPos, float sWidth, float sHeight) {
    // Check for bounding box collision
    boolean withinX = playerPos.x + sWidth / 2 >= x - w / 2 && playerPos.x - sWidth / 2 <= x + w / 2;
    boolean withinY = playerPos.y + sHeight / 2 >= y - h / 2 && playerPos.y + sHeight / 2 <= y + h / 2;
    return withinX && withinY;
  }
}
