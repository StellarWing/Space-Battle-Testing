class Bullet {

  //instance variables
  PVector location;
  PVector velocity;
  int lives;

  //constructor
  Bullet() {
    location = new PVector(myShip.location.x, myShip.location.y);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);
    velocity.setMag(18);
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
    if (location.x < 0 || location.x > width || location.y < 0 || location.y > height) {
      lives = 0;
    }
  }
}
