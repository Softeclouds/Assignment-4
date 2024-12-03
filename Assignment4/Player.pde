class Player { // creates a new class

 ////////////////// position variables /////////////////////
 int playerXpos; 
 int speed;
 PVector jumpStrength;
 float gravity = 0.5;
 
 //////////////////// Key Action variables //////////////
 boolean isLeft;  // a key
 boolean isRight; // d key
 boolean isGrounded; 
 boolean isJumping;
 boolean overY;
 boolean overX;

 
 boolean isPressed; // mouse being pressed
 
 PVector position;
 PVector velocity;
 PVector acceleration;
 
 int health;
 
 
 Player(){
 // initilising variables
 position = new PVector(width/2, 250);
 velocity = new PVector(0,0);         // initialize the velocity to start not moving
 isGrounded = true; 
 health = 20;
 acceleration = new PVector(0, gravity);   // initialize the acceleration to gravity like acceleration
 jumpStrength = new PVector(0,-10);


 }
 
 void display(){ // displays the player
 noStroke();
 rectMode(CENTER);
 fill(255);
 // same from my previous project, just removed the up and down directions
 if((int(isRight) - int(isLeft)) == -1){}  // -1 = Left
 else if((int(isRight) - int(isLeft)) == 1){}   // 1 = Right
 if(heroState == astrid) {
   image(astridStand,position.x,position.y);
   
  // if(playerXpos
 }
 else if(heroState == xander){image(xanderStand,position.x,position.y);}
 
 
}

void movePlayer(){
  if (position.y == 300) {
    isGrounded = true;
  }
  if( isShift == true) {speed = 5;}
  else {speed = 3;}
  if(isLeft == true){
  //velocity.x = -abs(acceleration.x) * speed;
  position.x -=speed;    //.add(velocity);
  }
  else if(isRight == true){
  //velocity.x = abs(acceleration.x) * speed; 
  position.x +=speed;     //.add(velocity);
  }
  else { velocity.x = 0; }
 
}
void move(int k, boolean b){ // checks which keys are being pressed and sets direction to true
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
void update() {
  if(overX == true && overY == true) { isGrounded = true;}
  //println(isGrounded);
  if(!isGrounded){
    velocity.add(acceleration);
  }
  position.add(velocity);
  if(overX == true && overY == false) {
    isGrounded = false;
  }
  if(isJumping == false && isGrounded){
     position.y = platforms[0].position.y-54;
     velocity.y = 0;
    }
  if(overY == true && overX == false){
    isGrounded = false;  
  }
}

void healthCheck(){
  if(health <= 0 || position.y > 500) {
    screenState = failedActive;
  }
}

void platformCheck(){
  for(int i = 0; i < platforms.length; i++){
    if(player.position.y +44 >= platforms[0].position.y-10){
      println("position.y");
      isJumping = false;
      overY = true;  
    } else { overY = false;}
     if(player.position.x+18 >= platforms[0].position.x-100 && player.position.x <= platforms[0].position.x+100){
      println("position.x");
      overX = true;
     } else { overX = false; }
    }  
}

} // end of player class
