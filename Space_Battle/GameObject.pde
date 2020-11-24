class GameObject {

  PVector location;
  PVector velocity;
  int lives;
  int size;

  GameObject() {
  }

  void show() {
    stroke(#D3D3D3);
    fill(0);
    rect(location.x, location.y, size, size);
  }

  void act() {
    location.add(velocity);
  }
  
  boolean offScreen() {
  return location.x < 0 || location.x > width || location.y < 0 || location.y > height;
  }
}
