
class Player {
  PVector position;
  PVector velocity;
  float size = 44;
  boolean onGround;

  boolean isLeft;  // a key
  boolean isRight; // d key
  boolean isGrounded;
  boolean isJumping;
  boolean overY;
  boolean overX;

  int playerXpos;
  int speed;
  PVector jumpStrength;
  PVector acceleration;
  float gravity = 0.5;

  int health;

  Player() {
    position = new PVector(width/2, 250);
    velocity = new PVector(0, 0);         // initialize the velocity to start not moving
    isGrounded = true;
    health = 20;
    acceleration = new PVector(0, gravity);   // initialize the acceleration to gravity like acceleration
    jumpStrength = new PVector(0, -10);
  }
  void move(int k, boolean b) { // checks which keys are being pressed and sets direction to true
    // code from my previous assignment
   if (k == 'A')  {isLeft = b;} 
 else if (k == 'D') {isRight = b;} 
 else if (k == ' ' && isGrounded == true) { 
   isJumping = true;
    isGrounded = false; 
 velocity.add(jumpStrength);
   }
   
   else if (k == 'Q') {isShift = b;}
   else if (k == 'R') {health = health-5;}
   
   if(isJumping == true) {println("jump");}
  }

void healthCheck(){
  if(health <= 0 || position.y > 500) {
    screenState = failedActive;
  }
}

  void update() {
    if ( isShift == true) {
      speed = 5;
    } else {
      speed = 3;
    }
    if (isLeft == true) {
     
      position.x -=speed;    
    } else if (isRight == true) {
      
      position.x +=speed;   
    } else {
      velocity.x = 0;
    }
    // Apply gravity
    velocity.y += 0.5;

    // Update position
    position.add(velocity);

    // Check collision with platforms
    isGrounded = false;
    for (Platform platform : platforms) {
      if (platform.checkCollision(position, size)) {
        isGrounded = true;
        position.y = platform.y - size / 2; // Position player on top of the platform
        velocity.y = 0; // Reset vertical velocity
        break;
      }
    }

    // Prevent falling out of the screen
    if (position.y > height - size / 2) {
      position.y = height - size / 2;
      isGrounded = true;
      velocity.y = 0;
    }


  }

  void display() {
    noStroke();
    rectMode(CENTER);
    fill(255);
    // same from my previous project, just removed the up and down directions
    if ((int(isRight) - int(isLeft)) == -1) {
    }  // -1 = Left
    else if ((int(isRight) - int(isLeft)) == 1) {
    }   // 1 = Right
    if (heroState == astrid) {
      image(astridStand, position.x, position.y);

      // if(playerXpos
    } else if (heroState == xander) {
      image(xanderStand, position.x, position.y);
    }
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

  boolean checkCollision(PVector playerPos, float playerSize) {
    // Check if player is on top of the platform
    return playerPos.x > x - playerSize / 2 &&
      playerPos.x < x + w + playerSize / 2 &&
      playerPos.y + playerSize / 2 > y &&
      playerPos.y + playerSize / 2 < y + h;
  }
}
