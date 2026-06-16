void gameover(){
  if(end==1){
    background(255,0,0);
    textSize(200);
    text("YOU LOST", 400,400);
    lose.play();
    
  }else{
  background(0,255,0);
  textSize(200);
  win.play();
  text("YOU WIN", 400,400);
  }
}

void gameoverClicks(){
  mode=INTRO;
  score=0;
  paddlex=width/2;
  paddley=height;
  ballx=width/2;
  bally=5*height/6;
  vx=0;
  vy=5;
  k=15;
  lose.pause();
  lose.rewind();
  win.pause();
  win.rewind();
  end=1;
  lives=3;
  change=1;
  akey=dkey=false;
  timer=100;
  int i =0;
  while(i<n){
alive[i]=true;
    i=i+1;
  }
}
  
