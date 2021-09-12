//Generelle variabler
int w = 1400; //Width
int h = 800; //Height

//Scene
int scene = 0;
//0 = Menu
//1 = game
//2 = options

//Kanon
float x = 0;
float y = 0;

//Image
PImage img;


void setup() {
  size(1400, 800);
  smooth();
  frameRate(60);
  noStroke();
  rectMode(CENTER);
  textAlign(CENTER);

  //Loader image
  img = loadImage("Grass.jpg");
}

void draw() {
  updateBackground();

  drawUI();

  if (scene==1) drawLevel();
}
