void pause() {
  background(255);
  button(400, 200, 200, 100, "RESUME");
}

void pauseClicks() {
  if (touchingMouse(400, 200, 200, 100)) {
    mode = GAME;
  }
}
