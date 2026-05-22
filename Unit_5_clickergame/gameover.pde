void gameover(){
  background(255,0,0);
  theme.pause();
  gameover.play();
}

void gameoverClicks(){
  mode = INTRO;
  theme.rewind();
  gameover.pause();
  life=3;
  score=0;
}
