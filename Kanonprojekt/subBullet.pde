class subBullet {
  //standard PVector used for the location of the bullet
  PVector location;

  PVector velocity;  
  PVector gravity;
  //vars used to check the angle between location and the mouse
  float  speed, rotation;
  subBullet( float angle) {
    //places the bullet in the middle of the room
    //bullet speed
    speed = 30;//change this number to change the speed
    rotation = angle;
    velocity = new PVector(speed*cos(rotation), speed*sin(rotation));

    gravity = new PVector(0, 0.5);

    location= new PVector(player.location.x, player.location.y);
  } 


  void update() {

    stroke(255);
    strokeWeight(5);

    velocity.add(gravity);

    line(location.x, location.y, location.x+velocity.x, location.y+velocity.y);

    location.add(velocity);
    strokeWeight(1);

    //removes the bullet from the arrayList if it is off the room
    if (location.x < 0 || location.x > width  || location.y > height) {

      subBullets.remove(i);
    } 
    println("subBullets = " +subBullets.size()); //debug for at sikre at vores bullets blev removed korrekt
  }
}
