void gameover(){
  win.play();
  if(leftscore>rightscore){
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
  leftscore=0;
  rightscore=0;
  lefty=height/2;
  righty=height/2;
  ballx=width/2;
  bally=height/2;
  win.pause();
  win.rewind();
}
