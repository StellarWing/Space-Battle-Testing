class Bullet {

  //instance variables
  PVector location;
  PVector velocity;
  int lives;

  //constructor
  Bullet() {
    location = new PVector(myShip.location.x, myShip.location.y);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);
    velocity.setMag(1);
    lives = 1;
  }
  
  //Behaviour functions
  void show() {
   stroke(255);
   fill(0);
   rect(location.x, location.y, 10, 10);
   
  }
  void act() {
    location.add(velocity);
  }
}
