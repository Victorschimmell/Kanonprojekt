class Enemy {

  PVector location;

  Boolean dead= false;

  int r;

  Enemy() {

    location = new PVector(width-100, player.location.y);

    dead = false;

    r=40;
  }

  void drawEnemy() {

    if ( !dead) {
      stroke(1);
      strokeWeight(1);
      fill(255, 0, 0);
      ellipse(location.x, location.y, r, r);

      collision();
    }
    if (keyPressed && key == 'r') dead=false;
  }

  void collision() {
    for (i = bullets.size()-1; i >= 0; i--) {
      //you need a seperate var to get the object from the bullets arraylist then use that variable to call the functions
      Bullet bullet = bullets.get(i);
      if ( bullet.r > dist (bullet.location.x, bullet.location.y, location.x, location.y)) {

        systems.add(new ParticleSystem(bullets.get(i).location.x, bullets.get(i).location.y));


        dead=true;
      }
    }
  }
}
