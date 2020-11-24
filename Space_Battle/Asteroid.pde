class Asteroid extends GameObject {

  //instance variables

  //constructor
  Asteroid() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(5), random(5));
    velocity.rotate(random(TWO_PI));
    size = 50;
    lives = 3;
  }

  void act() {
   super.act();
    if (location.x < 0) location.x = width;
    if (location.x > width) location.x = 0;
    if (location.y < 0) location.y = height;
    if (location.y > height) location.y = 0;
    
  }
}
