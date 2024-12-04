int menuActive = 0;
int charActive = 1;
int gameActive = 2;
int failedActive = 3;
int youWin = 4;
int screenState;

int astrid = 0;
int xander = 1;
int heroState;

int startTime;
int score;

boolean isClick;    // is the mouse being clicked
boolean isShift;

MenuScreen menuScreen;
CharScreen charScreen;
GameScreen gameScreen;
GameOver gameOver;
Winning winning;
Player player;

//Enemy enemy;

ArrayList<Platform> platforms = new ArrayList<Platform>();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();


PImage charSelects;
PImage astridStand;
PImage xanderStand;

PImage title;
PImage restart;
PImage winScreen;

PImage spike;

void setup(){
  size(800,500);
  frameRate(60);
  
  menuScreen = new MenuScreen();
  charScreen = new CharScreen();
  gameScreen = new GameScreen();
  gameOver = new GameOver();
  winning = new Winning();
  player = new Player();
  
  

  screenState = menuActive;

  platforms.add(new Platform(690, 245, 190, 20));
  platforms.add(new Platform(470, 315, 150, 20));
  platforms.add(new Platform(675, 405, 120, 20));
  platforms.add(new Platform(255, 255, 100, 20));
  platforms.add(new Platform(220, 165, 290, 20));
  platforms.add(new Platform(125, 415, 240, 20));
  platforms.add(new Platform(335, 355, 20, 20));
  
  charSelects = loadImage("CharSelect.png");
  astridStand = loadImage("AstridStand0.png");
  xanderStand = loadImage("XanderStand0.png");
  title = loadImage("Title.png");
  restart = loadImage("Restart.png");
  spike = loadImage("Spike.png");
  winScreen = loadImage("youWin.png");
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
  if(screenState == youWin){
    winning.display();
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
