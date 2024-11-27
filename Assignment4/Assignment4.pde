int menuActive = 0;
int charActive = 1;
int gameActive = 2;
int screenState;

boolean isClick;    // is the mouse being clicked

MenuScreen menuScreen;
CharScreen charScreen;
GameScreen gameScreen;

void setup(){
  size(800,500);
  
  menuScreen = new MenuScreen();
  charScreen = new CharScreen();
  gameScreen = new GameScreen();
  screenState = menuActive;
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
  
}

void mouseClicked() {
  isClick = true; 
} // end of mouseClicked
