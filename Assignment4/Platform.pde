class Platform {
PVector position;
int w;
int h;
  
  Platform(int x, int y, int wid, int hig){
 position = new PVector(x,y);
 w = wid;
 h = hig;
 
  }
  
  void display(){
    rectMode(CENTER);
    fill(255);
    rect(position.x, position.y, w, h);
  }
  
}
