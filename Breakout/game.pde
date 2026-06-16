void game(){
  background(0);
  mode=GAME;
  
  
  
  //bricks
  //circle(x[0],y[0],brickd);
  //circle(x[1],y[1],brickd);
  //circle(x[2],y[2],brickd);  
int i =0;
  while(i<n){
    if(alive[i]==true){
    manageBrick(i);
    }
    i=i+1;
  }
  //draw paddles
  
  //color
  //fill();
  fill(255);
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
  if(dist(ballx,bally,paddlex,paddley)<=paddled/2+balld/2){
    vx=(ballx-paddlex)/k;
    vy=(bally-paddley)/k;
    bump.rewind();
    bump.play();
  }
  if(bally<balld/2){
    vy=-vy;
    bump.rewind();
    bump.play();
  }
  if(ballx>width-balld/2){
    vx=-vx;
    bump.rewind();
    bump.play();
  }
  if(ballx<balld/2){
    vx=-vx;
    bump.rewind();
    bump.play();
  }
  
  //scoreBoard
  textSize(60);
  fill(0,0,255);
  fill(255,0,0);
  fill(255);
  timer=timer-1;
  
  //scoring
  if(ballx>width){
    score++;
    ballx=width/2;
    bally=height/2;
    timer=100;
    
  }
  
  //life
  if(bally>height){
    lives=lives-1;
    die.rewind();
    die.play();
    paddlex=width/2;
  paddley=height;
  ballx=width/2;
  bally=5*height/6;
  vx=0;
  vy=5;
  k=15;
  timer=100;
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
  if(lives==0){
    theme.pause();
    theme.rewind();
    end=1;
    mode=GAMEOVER;
  while(i<n){
    alive[i]=false;
    i=i+1;
  }
  }
  if(score==36){
    end=2;
    theme.pause();
    theme.rewind();
    mode=GAMEOVER;
    while(i<n){
    alive[i]=false;
    i=i+1;
  }
  }
  
  
  
  
  //show
  text("Score:",100,700);
  text(score,130,700);
  text("lives:",670,700);
  text(lives,700,700);
}

void manageBrick(int i){
  if(i>=0&&i<=n/4-1){
      fill(255,0,0);
    }else if(i>=n/4&&i<=n/2-1){
      fill(0,255,0);
    }else if(i>=n/2&&i<=n*3/4-1){
      fill(0,0,255);
    }else{
      fill(213,240,44);
    }
    strokeWeight(1);
    circle(x[i],y[i],brickd);
     if(dist(ballx,bally,x[i],y[i])<=brickd/2+balld/2){
    vx=7*(ballx-x[i])/(2*k);
    vy=7*(bally-y[i])/(2*k);
    alive[i]=false;
    score++;
    bump.rewind();
    bump.play();
    scores.rewind();
    scores.play();
     }
     
     
     
     
     
}

void gameClicks(){
  if(mouseX>0&&mouseX<100&&mouseY>0&&mouseY<50){
  //theme.pause();
  mode=PAUSE;
  }
}
