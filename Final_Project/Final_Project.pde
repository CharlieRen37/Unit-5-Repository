//import ddf.minim.*;
//import ddf.minim.analysis.*;
//import ddf.minim.effects.*;
//import ddf.minim.signals.*;
//import ddf.minim.spi.*;
//import ddf.minim.ugens.*;


//mod framework
int mode;
final int INTRO     =1 ;
final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER= 4;

//entity variables
float al,ar,vl,vr,g,wind;//missile movement
float lx,ly,rx,ry,d;//turret position

//keyboard variables
boolean wkey, upkey;

//score
int rightscore,leftscore;


void setup(){
  textAlign(CENTER,CENTER);
  size(800,800);
  mode =INTRO;
  lx=width/4;
  ry=ly=3*height/4;
  rx=3*width/4;
  d=100;
  
  
  
  
  
  
  
  
}



void draw(){
  if(mode==INTRO){
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
