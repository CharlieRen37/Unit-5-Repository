void pause(){
  fill(0,255,0);
  textSize(60);
  text("GAME PAUSED",400,400);
  noFill();
  stroke(0);
  fill(180,180,180);
  rect(0,0,100,50);
  fill(0);
  textSize(30);
  text("resume", 50,25);
}


void pauseClicks(){
  if(mouseX>0&&mouseX<100&&mouseY>0&&mouseY<50){
  //theme.play();
  mode=GAME;
  }
}
