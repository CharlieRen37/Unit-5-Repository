//Pong!


//mod framework
int mode;
final int INTRO     =1 ;
final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER= 4;

//entity variables
float leftx,lefty,leftd, rightx,righty,rightd;//paddles
float ballx,bally,balld,vx,vy,k;//ball

//keyboard variables
boolean wkey,skey,upkey,downkey;







void setup(){
  size(800,800);
  mode=GAME; 
  leftx=0;
  lefty=height/2;
  leftd=200;
  
  rightx=width;
  righty=height/2;
  rightd=200;
  
  //initiallize ball
  ballx=width/2;
  bally=height/2;
  balld=100;
  vx=random(-5,5);
  vy=random(-5,5);
  k=30;
  
  //initialize keyboard vars
  wkey=skey=upkey=downkey=false;
}


void draw(){
  if (mode ==INTRO){
    intro();
  }else if (mode==GAME){
    game();
  }else if (mode==PAUSE){
    pause();
  }else if (mode==GAMEOVER){
    gameover();
  }else{
    println("Mode error:" +mode);
  }
  
}
