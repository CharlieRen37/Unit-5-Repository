void game(){
  background(0);
  mode=GAME;
  //draw paddles
  
  //color
  //fill();
  
  circle(paddlex,paddley,paddled);
  
  //move paddles
  if(paddlex>0){
  if(akey==true) paddlex=paddlex-5;
  }
  if(paddlex<=height){
  if(dkey==true)paddlex=paddlex+5;
  }
  //ball
  circle(ballx,bally,balld);
  if (timer<0){
    ballx=ballx+vx;
    bally=bally+vy;
  }
  
  //collision
  if(dist(paddley,paddlex,ballx,bally)<=paddled/2+balld/2){
    vx=(ballx-paddley)/k;
    vy=(bally-paddlex)/k;
    //bump.rewind();
    //bump.play();
  }
  if(bally<balld/2){
    vy=-vy;
    //bump.rewind();
    //bump.play();
  }
  if(bally>height-balld/2){
    vy=-vy;
    //bump.rewind();
    //bump.play();
  }
  
  //scoreBoard
  textSize(60);
  fill(0,0,255);
  text(score,width/4,100);
  fill(255,0,0);
  //text(rightscore,3*width/4,100);
  fill(255);
  timer=timer-1;
  
  //scoring
  if(ballx>width){
    score++;
    ballx=width/2;
    bally=height/2;
    timer=100;
    //score.rewind();
    //score.play();
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
  //if(score==3||rightscore==3){
    //theme.pause();
    //theme.rewind();
    //mode=GAMEOVER;
  //}
}

void gameClicks(){
  if(mouseX>0&&mouseX<100&&mouseY>0&&mouseY<50){
  //theme.pause();
  mode=PAUSE;
  }
}
