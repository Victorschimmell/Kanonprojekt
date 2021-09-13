//Sky - opretter et koordinatsæt for hver del af skyen ved hjælp af vektorer.
PVector c1 = new PVector(w, h/8);
PVector c2 = new PVector(w+100, h/8+20);
PVector c3 = new PVector(w+50, h/8-20);

void drawSky() {
  fill(245, 245, 245);
  noStroke();
  ellipse(c1.x, c1.y, 200, 80);
  ellipse(c2.x, c2.y, 160, 90);
  ellipse(c3.x, c3.y, 120, 60);
  //Sørger for skyens bevægelse på vores canvas
  if (c2.x<-160) {
    c2.x = w+160;
    c1.x = w+200;
    c3.x = w+120;
  } else {
    c1.x = c1.x-0.5;
    c2.x = c2.x-0.5;
    c3.x = c3.x-0.5;
  }
}

//Level 1

void drawLevel() {

  drawSky();

  angle= atan2(mouseY- player.location.y, mouseX- player.location.x); //finder vores angle
  //Græs 
  //Sætter image og dens position
  image(img, 0, height-130);
  image(img, width/2, height-130);


  enemy.drawEnemy(); 
  player.update(); //Shoot
  update();
  player.drawCannon(); 
}
