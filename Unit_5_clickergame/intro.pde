void intro(){
  background(255);
  rect(300,350,200,100);
  fill(0);
  textSize(32);
  text("START GAME",400,400);
  noFill();
}

void introClicks(){
  if (mouseX>300 && mouseX<500 && mouseY>350 && mouseY<450){
    mode = GAME;
  }
}
