void game() {
  background(0);
  myShip.show();
  myShip.act();
  myAsteroid.show();
  myAsteroid.act();
  println(myBullets.size());

  int i = 0; //starting at bullet zero
  while (i < myBullets.size()) { //size is increase in number
    //processing each bullet individually 
    Bullet b = myBullets.get(i); //gets the current bullet
    if (b.lives > 0) {
      b.show(); //tells current bullet to draw itself 
      b.act();  //tells current bullet to update itself 
      i++; //go to the next bullet
    } else {
      myBullets.remove(i); //bullet in garbage
    }
  }
}

void gameClicks() {
}


//waifu is laifu 
//b is a random letter, can be replaced 
