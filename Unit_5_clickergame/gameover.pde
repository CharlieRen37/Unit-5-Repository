void gameover(){
  background(255,0,0);
  theme.pause();
  gameover.play();
  textSize(80);
  text("GAME OVER",400,300);
  textSize(60);
  text("HIGH SCORE:",350,600);
  if(score>highScore){
    highScore=score;
  }
  text(highScore,550,600);
  if(mouseX>600&&mouseX<750&&mouseY>700&&mouseY<775){
    stroke(0,255,0);
  }else{
    stroke(0);
  }
  fill(255);
  rect(600,700,150,75);
  fill(0);
  textSize(30);
  text("exit",675,737.5);
}

void gameoverClicks(){
  mode = INTRO;
  theme.rewind();
  gameover.pause();
  life=3;
  score=0;
  vx= random(-5,5);
  vy= random(-5,5);
  x=width/2;
  y=height/2;
  if(mouseX>600&&mouseX<750&&mouseY>700&&mouseY<775){
    exit();
  }
}
