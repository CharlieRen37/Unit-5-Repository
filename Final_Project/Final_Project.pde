//import ddf.minim.*;
//import ddf.minim.analysis.*;
//import ddf.minim.effects.*;
//import ddf.minim.signals.*;
//import ddf.minim.spi.*;
//import ddf.minim.ugens.*;

//game
int lives,end;


//mod framework
int mode;
final int INTRO     =   1;
final int GAME      =   2;
final int PAUSE     =   3;
final int GAMEOVER  =   4;
final int UTILITIES =   5;
final int INTERACTIONS= 6;


//entity variables
float lx,ly,rx,ry,d,la,ra,lr,rr;//turret
float plx,ply,prx,pry,pd,vlx,vly,vl,vrx,vry,vr,g,wind,tl,tr,groundy;//proj

//keyboard variables
boolean wkey, upkey;

//score
int rscore,lscore;
//intro
int Text;
int change;
//sound
//Minim minim;
//AudioPlayer bump,scores,win,intro,theme,lose,die;

//Font
//PFont font;

//collision: 
boolean actl,actr; 


////gif
//PImage[]gif;
//int numberOfFrames;
//int f;

void setup(){
  end=1;
  lives = 3;
  //font=createFont("font.ttf",10);
  //textFont(font);
  




//set value
la=0;
ra=0;
lr=5;
rr=5;
  actl=actr=false;
  pixelDensity(1);
  change=1;
  Text=200;
  textAlign(CENTER,CENTER);
  size(800,800);
  mode=INTRO; 
  
  //initiallize turret
  plx=lx=width/6;
  ply=pry=ry=ly=3*height/4;
  prx=rx=5*width/6;
  d=100;
  pd=10;
  vlx=0;
  vly=0;
  vl=0;
  vrx=vry=vr=0;
  g=10/10;
  wind=random(-3/20,3/20);
  tl=0;
  tr=0;
  groundy=(3*height/4)+1;
  
  //initialize keyboard vars
  wkey=upkey=false;
  
  //scoring
  rscore=lscore=0;
  
  //musics
  //minim = new Minim(this);
  //bump =minim.loadFile("mixkit-player-jumping-in-a-video-game-2043.wav");
  //scores =minim.loadFile("mixkit-casino-bling-achievement-2067.wav");
  //win =minim.loadFile("mixkit-game-level-completed-2059.wav");
  //intro =minim.loadFile("mixkit-game-level-music-689.wav");
  //theme=minim.loadFile("the_mountain-game-game-music-508018.mp3");
  //die=minim.loadFile("the-sound-of-lost-profits.mp3");
  //lose=minim.loadFile("kuzu420-game-over-284367 (1).mp3");
  
  
  

  
//  //gif
//  numberOfFrames=30;
//  gif=new PImage[numberOfFrames];
//  int m =0;
//  while(m<numberOfFrames){
//    gif[m]=loadImage("frame_"+m+"_delay-0.03s.gif");
//    m++;
//  }
//}
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
