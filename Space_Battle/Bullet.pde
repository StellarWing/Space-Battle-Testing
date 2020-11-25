class Bullet extends GameObject {

  //constructor
  Bullet() {
    location = new PVector(myShip.location.x, myShip.location.y);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);
    velocity.setMag(18);
    lives = 1;
    size = 10;
  }

  //Behaviour functions

  void act() {
    super.act();
    if (offScreen()) {
      lives = 0;
    }
  }
}
