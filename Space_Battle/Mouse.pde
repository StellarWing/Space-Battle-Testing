void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else {
    println("ERROR");
  }
}




//  boolean touchingObstacle() {
//    int i = 0;
//    while (i < myObjects.size()) {
//      GameObject obj = myObjects.get(i);
//      if (obj instanceof Asteroid) {
//        return true;
//      }
//      i++;
//    }
//    return false;
//  }
