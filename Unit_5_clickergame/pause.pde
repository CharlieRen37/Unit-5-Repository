void pause(){
  background(0,0,255);
  stroke(0);
  fill(180,180,180);
  rect(0,0,100,50);
}


void pauseClicks(){
  if(mouseX>0&&mouseX<100&&mouseY>0&&mouseY<50){
    theme.play();
    mode=GAME;
  }
}
