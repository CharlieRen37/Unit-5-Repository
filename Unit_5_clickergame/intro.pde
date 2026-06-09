void intro(){
  theme.play();
  background(255);
  strokeWeight(5);
  if(mouseX>150&&mouseX<350&&mouseY>350&&mouseY<450){
    stroke(255,0,0);
  }else{
  stroke(0);
}
  rect(150,350,200,100);
  if(mouseX>450&&mouseX<650&&mouseY>350&&mouseY<450){
    stroke(255,0,0);
  }else{
  stroke(0);
}
  rect(450,350,200,100);
  fill(0);
  textSize(32);
  text("START GAME",250,400);
  text("OPTIONS", 550,400);
  //textFont(title);
  textSize(80);
  text("PPAP Clicker",400,200);
  noFill();
}

void introClicks(){
  if (mouseX>150 && mouseX<350 && mouseY>350 && mouseY<450){
    mode = GAME;
  }
  if (mouseX>450&&mouseX<650&&mouseY>350&&mouseY<450){
    mode = OPTIONS;
  }
}
