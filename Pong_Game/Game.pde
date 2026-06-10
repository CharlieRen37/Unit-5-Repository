void game(){
  background(0);
  mode=GAME;
  //draw paddles
  
  //color
  //fill();
  
  circle(leftx,lefty,leftd);
  circle(rightx,righty,rightd);
  
  //move paddles
  if(lefty>0){
  if(wkey==true) lefty=lefty-5;
  }
  if(lefty<=height){
  if(skey==true)lefty=lefty+5;
  }
  if(AI==false){
  if(righty>=0){
  if(upkey==true)righty=righty-5;
  }
  if(righty<height){
  if(downkey==true)righty=righty+5;
  }
  }else{
    if(ballx>400){
      if(bally>righty){
        righty=righty+5;
      }
      if(bally<righty){
        righty=righty-5;
      }
    }
  }
  
  //ball
  circle(ballx,bally,balld);
  if (timer<0){
    ballx=ballx+vx;
    bally=bally+vy;
  }
  
  //collision
  if(dist(leftx,lefty,ballx,bally)<=leftd/2+balld/2){
    vx=(ballx-leftx)/k;
    vy=(bally-lefty)/k;
    bump.rewind();
    bump.play();
  }
  if(dist(rightx,righty,ballx,bally)<=rightd/2+balld/2){
    vx=(ballx-rightx)/k;
    vy=(bally-righty)/k;
    bump.rewind();
    bump.play();
  }
  if(bally<balld/2){
    vy=-vy;
    bump.rewind();
    bump.play();
  }
  if(bally>height-balld/2){
    vy=-vy;
    bump.rewind();
    bump.play();
  }
  
  //scoreBoard
  textSize(60);
  fill(0,0,255);
  text(leftscore,width/4,100);
  fill(255,0,0);
  text(rightscore,3*width/4,100);
  fill(255);
  timer=timer-1;
  
  //scoring
  if(ballx<0){
    rightscore=rightscore+1;
    ballx=width/2;
    bally=height/2;
    timer=100;
    score.rewind();
    score.play();
  }
  if(ballx>width){
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
    score.rewind();
    score.play();
  }
  
  //limitssssssss
  
  //pause
  stroke(0);
  fill(180,180,180);
  rect(0,0,100,50);
  fill(06);
  textSize(30);
  text("pause", 50,25);
  fill(255);
  
  //endgame
  if(leftscore==3||rightscore==3){
    theme.pause();
    theme.rewind();
    mode=GAMEOVER;
  }
}

void gameClicks(){
  if(mouseX>0&&mouseX<100&&mouseY>0&&mouseY<50){
  theme.pause();
  mode=PAUSE;
  }
}
