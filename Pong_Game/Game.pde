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
  ballx=ballx+vx;
  bally=bally+vy;
  
  //collision
  if(dist(leftx,lefty,ballx,bally)<=leftd/2+balld/2){
    vx=(ballx-leftx)/k;
    vy=(bally-lefty)/k;
  }
  if(dist(rightx,righty,ballx,bally)<=rightd/2+balld/2){
    vx=(ballx-rightx)/k;
    vy=(bally-righty)/k;
  }
}

void gameClicks(){
}
