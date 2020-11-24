Spaceship myShip; //Spaceship = class, myShip is the ship
Asteroid myAsteroid;
ArrayList<GameObject> myObjects;

int mode;
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;

boolean wkey, akey, skey, dkey, spacekey;
void setup() {
  size(800, 800);
  rectMode(CENTER);
  myShip = new Spaceship();
  myAsteroid = new Asteroid();

  wkey=skey=akey=dkey=false;
  
  myObjects = new ArrayList<GameObject>();
  
  myObjects.add(new Asteroid());
  
  
  mode = INTRO;
}

void draw() {
  {
   if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("ERROR");  }
}
}
