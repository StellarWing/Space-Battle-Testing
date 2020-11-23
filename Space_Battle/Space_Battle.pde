Spaceship myShip; //Spaceship = class, myShip is the ship
Bullet myBullet;

int mode;
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;

boolean wkey, akey, skey, dkey;
void setup() {
  size(800, 800);
  rectMode(CENTER);
  myShip = new Spaceship();
  myBullet = new Bullet();
  wkey=skey=akey=dkey=false;
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
