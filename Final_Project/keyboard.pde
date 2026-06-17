void keyPressed(){
  if(key=='w'||key=='W'){
  wkey=true;
  }
  
  if(keyCode==UP){
  upkey=true;
}
}
void keyReleased(){
  if(key=='w'||key=='W'){
  wkey=false;
  //left proj
  fill(0,0,255);
  circle(plx,ply,pd);
  vlx=vl*sin(radians(la));
  vly=-vl*cos(radians(la));
  plx=lx+sin(radians(la))*75;
  ply=ly-cos(radians(la))*75;
  tl=0;
  actl=true;
  }
  if(keyCode==UP){
    upkey=false;
    //left proj
  fill(255,0,0);
  circle(prx,pry,pd);
  vrx=vr*sin(radians(ra));
  vry=-vr*cos(radians(ra));
  prx=rx+sin(radians(ra))*75;
  pry=ry-cos(radians(ra))*75;
  //prx=prx+vrx;
  //pry=prx+vry;
  tr=0;
  actr=true;
  }
  
}
