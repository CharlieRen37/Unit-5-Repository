import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int SETTING = 4;
final int OPTIONS = 5;

//variable
float x,y,d,r,sliderY;
float vx, vy;
int score, life;
PImage apple, pen, pineapple; 
float image;
int highScore;


  //PFont title = createFont("BerlinSansFBDemi-Bold-48.vlw",80);
//sound variables
Minim minim;
AudioPlayer theme, inc, bump, fail, gameover;

void setup() {
  highScore=0;
  r=150;
  image=0;
  sliderY=225;
  size(800, 800);
  mode= INTRO;
  imageMode(CENTER);
  textAlign(CENTER,CENTER);
  //target setup
  x=width/2;
  y=height/2;
  d=200;
  vx= random(-5,5);
  vy= random(-5,5);
  score = 0;
  life = 3;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  inc = minim. loadFile("SUCCESS.wav");
  bump = minim. loadFile("blendertimer-bounce-8111.mp3");
  fail = minim. loadFile("FAILURE.wav");
  gameover=minim. loadFile("kuzu420-game-over-284367.mp3");
  
  
  //image
  apple = loadImage("apple.png");
  pen = loadImage("pen.png");
  pineapple=loadImage("pineapple.png");
}

void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  }else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
