void game(){
  plx=plx+vlx;
  ply=ply+vly;
  prx=prx+vrx;
  pry=pry+vry;
  background(255);
  mode=GAME;
  
  //draw left turret
  fill(0,0,255);
  if(wkey==false){
    leftturret();
  }
    circle(lx,ly,d);
  //draw left turret
  fill(255,0,0);
    if(upkey==false){
    rightturret();
  }
  circle(rx,ry,d);
  
  //vl indication
  if(wkey==true){
    if(tl<=5){
      
    tl=tl+1;
    }
    vl=map(tl,0,5,0,1);
  }
  
  //vr indication
  if(upkey==true){
    if(tr<=5){
      tr=tr+1;
    }
    vr=map(tr,0,5,0,1);
  }
  
  //draw proj
  // Draw left projectile every frame
fill(0, 0, 255);
circle(plx, ply, pd);

// Draw right projectile every frame
fill(255, 0, 0);
circle(prx, pry, pd);

  
  //collision
  //lr
  if(dist(lx,ly,prx,pry)<=pd/2+d/2){
    prx=rx;
    pry=ry;
    vrx=0;
    vry=0;
    vr=0;
    rscore=rscore+1;
    //bump.rewind();
    //bump.play();
  }
  //rl
  if(dist(rx,ry,plx,ply)<=pd/2+d/2){
    //plx=lx;
    //ply=ly;
    vlx=0;
    vly=0;
    vl=0;
    lscore=lscore+1;
    //bump.rewind();
    //bump.play();
  }
  //l
  if(plx<pd/2){
    //plx=lx;
    //ply=ly;
    vlx=0;
    vly=0;
    vl=0;
    //bump.rewind();
    //bump.play();
  }
  if(plx>width-(pd/2)){
    //plx=lx;
    //ply=ly;
    vlx=0;
    vly=0;
    vl=0;
    //bump.rewind();
    //bump.play();
  }
  if(ply>height-(pd/2)){
    //plx=lx;
    //ply=ly;
    vlx=0;
    vly=0;
    vl=0;
    //bump.rewind();
    //bump.play();
  }
  //r
  if(prx<pd/2){
    prx=rx;
    pry=ry;
    vrx=0;
    vry=0;
    vr=0;
    //bump.rewind();
    //bump.play();
  }
  if(prx>width-pd/2){
    prx=rx;
    pry=ry;
    vrx=0;
    vry=0;
    vr=0;
    //bump.rewind();
    //bump.play();
  }
  if(pry>height-pd/2){
    prx=rx;
    pry=ry;
    vrx=0;
    vry=0;
    vr=0;
    //bump.rewind();
    //bump.play();
  }
  
  
  
  
  
  //pause
  stroke(0);
  fill(180,180,180);
  rect(0,0,100,50);
  fill(06);
  textSize(30);
  text("pause", 50,25);
  fill(255);
  
  
  
  
  //endgame
  if(lscore==3||rscore==3){
    //theme.pause();
    //theme.rewind();
    mode=GAMEOVER;
  }
  
}  
  
  //show
//  text("Score:",100,700);
//  text(score,130,700);
//  text("lives:",670,700);
//  text(lives,700,700);
//}


void leftturret(){
  pushMatrix();
  translate(lx,ly);
  rotate(radians(la));
  strokeWeight(10);
  line(0,0,0,-75);
  if(wkey==false){
  if(la>90){
    lr=-3;
  }else if(la<-90){
    lr=3;
  }
      la=la+lr;
  }
      popMatrix();
}
void rightturret(){
  pushMatrix();
  translate(rx,ry);
  rotate(radians(ra));
  strokeWeight(10);
  line(0,0,0,-75);
  if(upkey==false){
  if(ra>90){
    rr=-3;
  }else if(ra<-90){
    rr=3;
  }
      ra=ra+rr;
  }
      popMatrix();
}
void gameClicks(){
  if(mouseX>0&&mouseX<100&&mouseY>0&&mouseY<50){
  //theme.pause();
  mode=PAUSE;
  }
}
