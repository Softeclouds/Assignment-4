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

//Enemy enemy;

ArrayList<Platform> platforms = new ArrayList<Platform>();


PImage charSelects;
PImage astridStand;
PImage xanderStand;

PImage title;
PImage restart;

void setup(){
  size(800,500);
  
  menuScreen = new MenuScreen();
  charScreen = new CharScreen();
  gameScreen = new GameScreen();
  gameOver = new GameOver();
  player = new Player();
  
 // enemy = new Enemy();

  screenState = menuActive;

  platforms.add(new Platform(400, 344, 200, 20));
  platforms.add(new Platform(350, 300, 150, 20));
  platforms.add(new Platform(600, 500, 180, 20));
  
  charSelects = loadImage("CharSelect.png");
  astridStand = loadImage("AstridStand0.png");
  xanderStand = loadImage("XanderStand0.png");
  title = loadImage("Title.png");
  restart = loadImage("Restart.png");
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
