class Asteroid extends GameObject {

  //instance variables

  //constructor
  Asteroid() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(2), random(2));
    velocity.rotate(random(TWO_PI));
    size = 50;
    lives = 1;
  }

  Asteroid(int s, float x, float y) {
    lives = 1;
    location = new PVector (x, y);
    velocity = new PVector(random(5), random(5));
    velocity.rotate(random(TWO_PI));
    size = s;
  }

  void act() {
    super.act();
    int i = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {
        if ( dist(location.x, location.y, myObj.location.x, myObj.location.y) <= size/2 + myObj.size) {
          myObj.lives = 0;
          lives --;
          myObjects.add(new Asteroid(size/2, location.x, location.y));
          myObjects.add(new Asteroid(size/2, location.x, location.y));
        }
      }
      if (myObj instanceof Spaceship) {
         //do things here  
      }
      i++;
    }
    if (location.x < 0) location.x = width;
    if (location.x > width) location.x = 0;
    if (location.y < 0) location.y = height;
    if (location.y > height) location.y = 0;
  }
}
