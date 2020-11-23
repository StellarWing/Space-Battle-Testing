void intro() {
  background(150);
  button(400, 600, 200, 100, "START");
  button(400, 300, 200, 100, "QUIT");
}

void introClicks() {
  if (touchingMouse(400, 600, 200, 100)) {
    mode = GAME;
  }
  if (touchingMouse(400, 300, 200, 100)) {
    exit();
  }
}
