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
  }
  if(y < d/2 || y > height-d/2){
    vy= -vy;
  }
}

void gameClicks(){
  inc.rewind();
  inc.play();
  mode=GAMEOVER;
}
