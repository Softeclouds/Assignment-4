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
 
 
 Player(){
 // initilising variables
 playerXpos = width/2;
 isGrounded = true; 
 speed = 2;
 }
 
 void display(){ // displays the player
 noStroke();
 rectMode(CENTER);
 fill(255);
 // same from my previous project, just removed the up and down directions
 if((int(isRight) - int(isLeft)) == -1){fill(0,0,255);}  // -1 = Left
 else if((int(isRight) - int(isLeft)) == 1){fill(0,255,0);}   // 1 = Right
 if(heroState == astrid){image(astridStand,playerXpos,300);}
 else if(heroState == xander){image(xanderStand,playerXpos,300);}
}

void movePlayer(){
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
   
   if(isJumping == true) {println("jump");}
 }


} // end of player class
