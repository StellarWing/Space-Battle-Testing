void game() {
  background(0);
  myShip.show();
  myShip.act();

  
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
  textSize(40);
  fill(255);
  text("Score: " + score, 100, 400);
  text("Lives: " + lives, 100, 300);
  
}

void gameClicks() {
}







//waifu is laifu, hippty hoppity yay, at home maybe 
//death to heretics in the forest, yonder back and forth, frotthing in and and about the pristine waters that once
//provided life to those I don't know what I'm writing 
