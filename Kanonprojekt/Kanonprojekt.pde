//Generelle variabler
int w = 1400; //Width
int h = 800; //Height

//Scene
int scene = 0, i;
//0 = Menu
//1 = game
//2 = options

//Objects
Player player = new Player();

//Vars to regulate shooting speed
boolean canShoot = true;
float canShootCounter = 0;
float angle; //rotation of shot

//Bullet arraylist
ArrayList<Bullet> bullets;
ArrayList<subBullet> subBullets;

//Image
PImage img;


void setup() {
  size(1400, 800);
  smooth();
  frameRate(60);
  noStroke();


  //standard array setup
  player = new Player();
  bullets = new ArrayList<Bullet>();
  subBullets = new ArrayList<subBullet>();

  //Loader image
  img = loadImage("Grass.jpg");
}

void draw() {
  updateBackground();

  drawUI();

  if (scene==1) drawLevel();
}


void update() {

  for (i = subBullets.size()-1; i >= 0; i--) {
    //you need a seperate var to get the object from the bullets arraylist then use that variable to call the functions
    subBullet subBullet = subBullets.get(i);
    subBullet.update();
  }

  //since we are adisplayDensitying and removing objects so often, we need to do the forloop backwards preventing any nullPointer errors
  for (i = bullets.size()-1; i >= 0; i--) {
    //you need a seperate var to get the object from the bullets arraylist then use that variable to call the functions
    Bullet bullet = bullets.get(i);
    bullet.update();
  }
}
