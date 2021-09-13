class Player {
  PVector location, mouse;

  Player() {

    location = new PVector(20, height-height/12*2-20);
  } 
  void update() {


    if (canShootCounter >= frameRate/frameRate) {
      subBullets.add( new subBullet(angle));
      canShootCounter = 0;
    } else {
      canShootCounter+=1;
    }

    if (mousePressed && canShoot) {
      // this regulates the shooting speed
      //move the bullet

      bullets.add( new Bullet(angle));
      canShoot = false;
    } else if (!mousePressed) {

      canShoot = true;
    }
  }


  void drawCannon() {

    //Edwards kode her

    int num = 1;
    stroke(1);
    switch(num) {
    case 1:
      pushMatrix();
      translate(location.x, location.y);
      //Hjul_2
      fill(#654321);
      ellipse(0+10, 0, 100, 100);

      //Hjuldesign til hjul 2
      fill(#42291A);
      rect(0+10, 0, 50, 5);

    case 2:
      // Her beskrives kanonen

      fill(#323334); 
      mouse = new PVector(mouseX, mouseY);

      mouse.sub(location);
      mouse.normalize();

      mouse.mult(150);

      strokeWeight(40);
      strokeCap(SQUARE);
      line(0, 0, mouse.x, mouse.y);

      strokeCap(ROUND);
      strokeWeight(1);

    case 3: 
      //Hjul 1
      fill(#654321);
      ellipse(0, 0, 100, 100);

      //Hjuldesign til hjul 1 
      fill(#42291A);
      rectMode(CENTER);

      pushMatrix();
      rotate(radians(-PI*10));
      rect(0, 0, 5, 100);
      popMatrix();

    case 4:
      pushMatrix();
      rotate(radians(PI*10));
      rect(0, 0, 5, 100);
      popMatrix();

    case 5:
      pushMatrix();
      rotate(radians(PI*200));
      rect(0, 0, 5, 100);
      popMatrix();
    }
    rectMode(CORNER);
    popMatrix();
  }
}
