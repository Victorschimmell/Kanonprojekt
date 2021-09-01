//Generelle variabler
int w = 1400; //Width
int h = 800; //Height

void setup(){
  size(1400,800);
  smooth();
  noStroke();
  rectMode(CENTER);
}

void draw(){
  updateBackground();
  drawLevel();
}
