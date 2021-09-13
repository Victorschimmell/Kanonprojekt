
int Pantal = 100;

class ParticleSystem //gør at particler kan oprettes forskellige steder
{
  ArrayList<Particle> particleArr;
  int parts; //antal dele af partiklerne

  ParticleSystem()
  {
    particleArr = new ArrayList<Particle>();
    parts = 0;
    for (int z = 0; z < Pantal; z++)
    {
      Particle p = new Particle(); //giver dem et sted at oprettes
      p.x = 0;
      p.y = 0;
      particleArr.add(p);
      parts++;
    }
  }
  ParticleSystem(float x, float y)
  {
    particleArr = new ArrayList<Particle>(); //gør at der kan tilføjes flere eksplosioner
    parts = 0;
    for (int z = 0; z < Pantal; z++)
    {
      Particle p = new Particle();
      p.x = x;
      p.y = y;
      particleArr.add(p);
      parts++;
    }
  }

  void update() //opdaterer particlerne (får dem til at forsvinde og fremstå)
  {

    for (int i = 0; i < parts; i++) {
      particleArr.get(i).update();

      if (!particleArr.get(i).visible) {
        particleArr.remove(particleArr.get(i));
        parts--;
      } else {
        particleArr.get(i).update();
      }
    }
  }
  void display()
  {

    for (int i = 0; i < parts; i++)
    {
      particleArr.get(i).render();
    }
  }
}


class Particle { //tegner particler
  float x, y;    // position
  float dx, dy;  // hastighed
  float r;       // radius
  float dr;      // hvordan den skifter radius, med tilfældighed


  boolean visible; //om particles kan ses eller ej

  Particle() {
    reset();
  }

  //tegner ellipserne der en del af vores particle
  void render() {
    if (visible) {
      fill(255, 0,0);
      ellipse(x, y, 2 * r, 2 * r);
    }
  }
  
  void update() { //bevæger partiklerne i givne retninger
      x += dx;
      y += dy;
      r += dr;
    
    if (r < 1) {   //fjerne en particle når den bliver for lille
      visible = false;
    }
  }
  
  void reset() {
    dx = random(-2.0, 2.0);   // Disse værdier kan ændres for at få forskellige former for eksplosioner
    dy = random(-2.0, 2.0);   
    r = random(10, 10.0);   
    dr = random(-0.5, 0.0);   
    visible = true;
  }

  
}
