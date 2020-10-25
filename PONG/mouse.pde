void mouseReleased() {
  if (mode ==INTRO) {
  introClicks();
  }else if (mode == GAME){
  gameClicks();
  }else if (mode == PAUSE){
  pauseClicks();
  }else if (mode == GAMEOVER){
  GAMEOVERClicks();
  }else if (mode == GAMEOVER1){
  GAMEOVER1Clicks();
  }
}
