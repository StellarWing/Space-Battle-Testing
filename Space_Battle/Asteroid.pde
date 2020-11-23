class Asteroid {

  //instance variables
  PVector location; //random location
  PVector velocity; //random speed/direction
  int size;
  int lives;

  //constructor
  Asteroid() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(5), random(5));
    velocity.rotate(random(TWO_PI));
    size = 50;
    lives = 3;
  }
  void show() {
    stroke(#D3D3D3);
    fill(0);
    rect(location.x, location.y, 13, 13);
  }
  void act() {
    location.add(velocity);
    if (location.x < 0) location.x = width;
    if (location.x > width) location.x = 0;
    if (location.y < 0) location.y = height;
    if (location.y > height) location.y = 0;
    
  }
}
