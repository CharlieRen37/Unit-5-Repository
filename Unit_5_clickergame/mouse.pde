void mouseReleased(){
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }else if (mode==OPTIONS){
      sliderY();
      if (dist(125,575,mouseX,mouseY)<d/2){
        image=1;
      }
      if (dist(mouseX,mouseY,340,575)<d/2){
        image=2;
      }
      if (dist(mouseX,mouseY,555,575)<d/2){
        image=3;
      }
      if(mouseX>650&&mouseX<780&&mouseY>675&&mouseY<740){
        mode=INTRO;
      }
  }
}
