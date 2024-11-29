class Player { // creates a new class

 ////////////////// position variables /////////////////////
 int playerXpos; 
 int speed;
 
 //////////////////// Key Action variables //////////////
 boolean isLeft;  // a key
 boolean isRight; // d key
 boolean isGrounded; 
 boolean isJumping;

 
 boolean isPressed; // mouse being pressed
 
 PVector position;
 PVector velocity;
 PVector acceleration;
 
 
 Player(){
 // initilising variables
 position = new PVector(width/2, 300);
 velocity = new PVector(0,0);         // initialize the velocity to start not moving
 acceleration = new PVector(0.1,0);   // initialize the acceleration to gravity like acceleration
 isGrounded = true; 


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
  if( isShift == true) {speed = 15;}
  else {speed = 10;}
  if(isLeft == true){
  velocity.x = -abs(acceleration.x) * speed;
  position.add(velocity);
  }
  else if(isRight == true){
  velocity.x = abs(acceleration.x) * speed; 
  position.add(velocity);
  }
  else { velocity.x = 0; }
  playerXpos = constrain(playerXpos + speed *(int(isRight) - int(isLeft)), 5, 770);
}
void move(int k, boolean b){ // checks which keys are being pressed and sets direction to true
// code from my previous assignment
 if (k == 'A')  {isLeft = b;} 
 else if (k == 'D') {isRight = b;} 
 else if (k == ' ' && isGrounded == true) { 
 isGrounded = false;
 isJumping = b;
   }
   else if (k == 'Q') {isShift = b;}
   else if (k == 'R') {screenState = failedActive;}
   
   if(isJumping == true) {println("jump");}
 }


} // end of player class
