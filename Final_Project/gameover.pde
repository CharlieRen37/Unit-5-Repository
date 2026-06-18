void gameover(){
  //win.play();
  if(lscore>rscore){
    background(0,0,255);
    fill(255);
    textSize(100);
    text("BLUE WINS",400,400);
  }else{
    background(255,0,0);
    fill(255);
    textSize(100);
    text("RED WINS",400,400);
  }
}
    



void gameoverClicks(){
  mode=INTRO;
  lscore=0;
  rscore=0;
  //win.pause();
  //win.rewind();
}
