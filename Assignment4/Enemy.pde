class Enemy{
   PVector position;
  Enemy(){
   position = new PVector(400,300);
  }
  
  void display(){
    rectMode(CORNER);
    rect(position.x,position.y,40,40);
  }
  void update(){
    if(player.position.x > position.x && player.position.x < position.x +40){
      //println("x collide");
      if(heroState == xander){
          xanderStand = loadImage("XanderStandhit0.png");
      if(player.position.y -30 > position.y && player.position.y - 30 < position.y + 40) {
        println("y collide");
        
        }
      }
    }
  }
  
  
  
}