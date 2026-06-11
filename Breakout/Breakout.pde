//import ddf.minim.*;
//import ddf.minim.analysis.*;
//import ddf.minim.effects.*;
//import ddf.minim.signals.*;
//import ddf.minim.spi.*;
//import ddf.minim.ugens.*;

//Pong!


//mod framework
int mode;
final int INTRO     =   1;
final int GAME      =   2;
final int PAUSE     =   3;
final int GAMEOVER  =   4;
final int UTILITIES =   5;
final int INTERACTIONS= 6;


//entity variables
float paddley,paddlex,paddled;//paddle
float ballx,bally,balld,vx,vy,k;//ball

//keyboard variables
boolean akey,dkey;

//score
int score,timer;

//sound
//Minim minim;
//AudioPlayer bump,score,win,intro,theme;



void setup(){
  textAlign(CENTER,CENTER);
  size(800,800);
  mode=INTRO; 
  paddley=0;
  paddlex=height/2;
  paddled=200;

  
  //initiallize ball
  ballx=width/2;
  bally=height/2;
  balld=100;
  vx=random(-5,5);
  vy=random(-5,5);
  k=15;
  
  //initialize keyboard vars
  akey=dkey=false;
  
  //scoring
  score=0;
  timer=100;
  
  //musics
  //minim = new Minim(this);
  //bump =minim.loadFile("mixkit-player-jumping-in-a-video-game-2043.wav");
  //score =minim.loadFile("mixkit-casino-bling-achievement-2067.wav");
  //win =minim.loadFile("mixkit-game-level-completed-2059.wav");
  //intro =minim.loadFile("mixkit-game-level-music-689.wav");
  //theme=minim.loadFile("the_mountain-game-game-music-508018.mp3");
  
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
