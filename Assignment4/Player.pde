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

 
 boolean isPressed; // mouse being pressed
 
 PVector position;
 PVector velocity;
 PVector acceleration;
 
 
 Player(){
 // initilising variables
 position = new PVector(width/2, 300);
 velocity = new PVector(0,0);         // initialize the velocity to start not moving
 acceleration = new PVector(0, gravity);   // initialize the acceleration to gravity like acceleration
 jumpStrength = new PVector(0,-10);
 //isGrounded = true; 


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
  playerXpos = constrain(playerXpos + speed *(int(isRight) - int(isLeft)), 5, 770);
}
void move(int k, boolean b){ // checks which keys are being pressed and sets direction to true
// code from my previous assignment
 if (k == 'A')  {isLeft = b;} 
 else if (k == 'D') {isRight = b;} 
 else if (k == ' ' && isGrounded == true) { 
    isGrounded = false;
    
 velocity.add(jumpStrength);


   }
   else if (k == 'Q') {isShift = b;}
  
  
 }
void update() {
  println(isGrounded);
  if(!isGrounded){
    velocity.add(acceleration);
  }
  position.add(velocity);
  if(position.y >=290) {
    position.y = 290;
    velocity.y = 0;
    isGrounded = true;
    
  }
}


} // end of player class
