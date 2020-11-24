class Fire extends GameObject {

  Fire() {
    location = myShip.location.copy();
    velocity = myShip.direction.copy();
    velocity.rotate(radians(180) + random(-0.1, 0.1));
    velocity.setMag(5);
    size = 1;
    lives= 1;
  }
  void act() {
    super.act();
    if (offScreen()) {
      lives = 0;
    }
  }
}
