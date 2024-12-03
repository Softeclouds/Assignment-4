int menuActive = 0;
int charActive = 1;
int gameActive = 2;
int failedActive = 3;
int screenState;

int astrid = 0;
int xander = 1;
int heroState;

boolean isClick;    // is the mouse being clicked
boolean isShift;

MenuScreen menuScreen;
CharScreen charScreen;
GameScreen gameScreen;
GameOver gameOver;
Player player;
Platform platform;
Enemy enemy;
//Platform platform;
Platform[] platforms = new Platform[10];

PImage charSelects;
PImage astridStand;
PImage xanderStand;

void setup(){
  size(800,500);
  
  menuScreen = new MenuScreen();
  charScreen = new CharScreen();
  gameScreen = new GameScreen();
  gameOver = new GameOver();
  player = new Player();
  
  enemy = new Enemy();

  screenState = menuActive;
  platforms[0] = new Platform(400,344,200,20); // plus 44 cause sprites are 44 pixels tall
  platforms[1] = new Platform(400,100,60,20);
  /*for(int i = 0; i < platforms.length; i++){
    platforms[i] = new Platform(
  } */
  
  charSelects = loadImage("CharSelect.png");
  astridStand = loadImage("AstridStand0.png");
  xanderStand = loadImage("XanderStand0.png");
}

void draw(){
  if(screenState == menuActive){
    menuScreen.drawMenu();
  }
  if(screenState == charActive){
    charScreen.drawChar();
  }
  if(screenState == gameActive){
    gameScreen.drawGame();
  }
  if(screenState == failedActive){
    gameOver.display();
  }
  
}

void mouseClicked() {
  isClick = true; 
} // end of mouseClicked

void keyPressed() {
  player.move(keyCode, true); // when a key is pressed, that directions boolean is set to true
}

void keyReleased() {
  player.move(keyCode, false); // when a key is released, that directions boolean is set to false
} // end of keyReleased
