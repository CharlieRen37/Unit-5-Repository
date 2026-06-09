void game(){
  background(0);
  
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
  if(righty>=0){
  if(upkey==true)righty=righty-5;
  }
  if(righty<height){
  if(downkey==true)righty=righty+5;
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
  }
  if(dist(rightx,righty,ballx,bally)<=rightd/2+balld/2){
    vx=(ballx-rightx)/k;
    vy=(bally-righty)/k;
  }
  if(bally<balld/2){
    vy=-vy;
  }
  if(bally>height-balld/2){
    vy=-vy;
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
  }
  if(ballx>width){
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
  }
  
  //limit
  if(bally<balld/3){
    bally=balld/2;
  }
  if(bally>height-balld/3){
    bally=height-balld/2;
  }
  if(leftscore>=3||rightscore>=3){
  mode=GAMEOVER;
  }
}

void gameClicks(){
}
