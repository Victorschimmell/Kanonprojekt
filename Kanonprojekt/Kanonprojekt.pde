//Generelle variabler
int w = 1400; //Width
int h = 800; //Height

//Menu
int menu = 0;
//0 = main
//1 = game
//2 = options

//Kanon
float x = 0;
float y = 0;

void setup(){
  size(1400,800);
  smooth();
  noStroke();
  rectMode(CENTER);
  textAlign(CENTER);
}

void draw(){
  updateBackground();
  if(menu==0){
    drawUI();
  }
  if(menu==1){
    drawLevel();
    drawCannon();
    drawSky();
   RotateCannon();
  }
}
