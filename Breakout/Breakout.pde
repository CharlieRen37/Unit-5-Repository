import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

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
float paddley,paddlex,paddled;//paddle
float ballx,bally,balld,vx,vy,k;//ball

//keyboard variables
boolean akey,dkey;

//score
int score,timer;
//intro
int Text;
int change;
//sound
Minim minim;
AudioPlayer bump,scores,win,intro,theme,lose,die;

//Font
PFont font;

//brick Variables
int [] x;
int[] y;
int brickd;
int n;
int tempx,tempy;
boolean [] alive;


//gif
PImage[]gif;
int numberOfFrames;
int f;

void setup(){
  end=1;
  lives = 3;
  font=createFont("font.ttf",10);
  textFont(font);
  
  
  
  pixelDensity(1);
  change=1;
  Text=200;
  textAlign(CENTER,CENTER);
  size(800,800);
  mode=INTRO; 
  paddley=height;
  paddlex=width/2;
  paddled=200;

  
  //initiallize ball
  ballx=width/2;
  bally=5*height/6;
  balld=20;
  vx=0;
  vy=5;
  k=15;
  
  //initialize keyboard vars
  akey=dkey=false;
  
  //scoring
  score=0;
  timer=100;
  
  //musics
  minim = new Minim(this);
  bump =minim.loadFile("mixkit-player-jumping-in-a-video-game-2043.wav");
  scores =minim.loadFile("mixkit-casino-bling-achievement-2067.wav");
  win =minim.loadFile("mixkit-game-level-completed-2059.wav");
  intro =minim.loadFile("mixkit-game-level-music-689.wav");
  theme=minim.loadFile("the_mountain-game-game-music-508018.mp3");
  die=minim.loadFile("the-sound-of-lost-profits.mp3");
  lose=minim.loadFile("kuzu420-game-over-284367 (1).mp3");
  
  
  
  //setup array of bricks
  brickd=40;
  n=36;
  x=new int[n];
  y = new int [n];
  alive = new boolean[n];
  tempx=80;
  tempy=80;
  
  int i=0;
  while(i<n){
    x[i]=tempx;
    y[i]=tempy;
    alive[i]=true;
    tempx=tempx+80;
    if(tempx==width){
      tempx=80;
      tempy=tempy+80;
    }
    i=i+1;
  }
  
  //gif
  numberOfFrames=30;
  gif=new PImage[numberOfFrames];
  int m =0;
  while(m<numberOfFrames){
    gif[m]=loadImage("frame_"+m+"_delay-0.03s.gif");
    m++;
  }
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
