class Spaceship extends GameObject {

  //1. Instance variables or fields
  PVector direction;

  //2. Constructor: name matches the class name, sets up default values 
  int shotTimer, threshold;
  
  Spaceship() {
    location = new PVector(width/2, height/2);
    direction = new PVector(0.1, 0);
    velocity = new PVector(0, 0);
    size = 50;
    lives = 3;
    shotTimer = 0;
    threshold = 15;
  }

  //3. Behaviour functions
  void show() {
    pushMatrix();
    strokeWeight(3);
    stroke(255);
    fill(0);
    translate(location.x, location.y);
    rotate(direction.heading());
    rect(0, 0, size, size);
    popMatrix();
  }

  void act() {
    super.act();
    
    shotTimer++;
    
    if (akey) direction.rotate(-radians(5));
    if (dkey) direction.rotate(radians(5));
    if (wkey)
    {
      velocity.add(direction);
      myObjects.add(new Fire());
    }

    if (skey) velocity.sub(direction);
    if (spacekey && shotTimer > threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }
  }
}
