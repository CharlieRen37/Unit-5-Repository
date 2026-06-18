void intro(){
  //theme.play();
  background(118,111,193);
  strokeWeight(5);
  fill(82,240,212);
  textSize(32);
  //textFont(title);
  textSize(Text);
  text("TURRET DUAL",400,400);
  if(Text>=200){
    change=-1;
  }else if (Text<=50){
    change=1;
  }
  Text=Text+change;
  noFill();  
}

void introClicks(){
  mode=GAME;
}
