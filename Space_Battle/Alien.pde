class Alien extends GameObject {

  Alien(int s, float x, float y) {
    lives = 2;
    location = new PVector (x, y);
    velocity = new PVector (random(2), 0);
    velocity.rotate(random(TWO_PI));
    size = 70;
    
  }
  ///void.act() {
   // super.act();
    //objects.add(new Bullet())
  //}
}
