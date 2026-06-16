void intro(){
  theme.play();
  textFont(font);
  background(118,111,193);
  image(gif[f],0,0,width,height);
  f++;
  if(f==numberOfFrames)f=0;
  strokeWeight(5);
  fill(82,240,212);
  textSize(32);
  //textFont(title);
  textSize(Text);
  text("BREAKOUT",400,400);
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
