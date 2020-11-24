void game() {
  background(0);
  myShip.show();
  myShip.act();
  myAsteroid.show();
  myAsteroid.act();
  println(myObjects.size());

  int i = 0; 
  while (i < myObjects.size()) { 
    
    GameObject obj = myObjects.get(i); 
    if (obj.lives > 0) {
      obj.show(); 
      obj.act();  
      i++; 
    } else {
      myObjects.remove(i); //bullet in garbage
    }
  }
}

void gameClicks() {
}


//waifu is laifu 
//b is a random letter, can be replaced 
