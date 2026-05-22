void game (){
  background(0,255,0);
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x,y,d);
  //v
  x=x+vx;
  y=y+vy;
  
    //bounce
  if(x < d/2 || x > width-d/2){
    vx = -vx;
    bump.rewind();
    bump.play();
  }
  if(y < d/2 || y > height-d/2){
    vy= -vy;
    bump.rewind();
    bump.play();
  }
  
  //pause
  stroke(0);
  fill(180,180,180);
  rect(0,0,100,50);
  
  //score
  text("socre:",360,20);
  text(score,440,20);
  
  //life
  
}

void gameClicks(){
  if(dist(x,y,mouseX,mouseY)<d/2){
    score=score+1;
    inc.rewind();
    inc.play();
  }else if(mouseX>0&&mouseX<100&&mouseY>0&&mouseY<50){
  theme.pause();
  mode=PAUSE;
}else{
  life=life-1;
  fail.rewind();
  fail.play();
  if(life==0){
    mode=GAMEOVER;
    gameover.rewind();
  }
  }
}
