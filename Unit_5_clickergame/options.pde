void options(){
  background(255);
  
  textSize(30);
  text("Target Preview", 350,50);
  text("Target Options",350,350);
  text("Target Size", 700,50);
  strokeWeight(5);
  stroke(0);
  line(700,150,700,300);
  fill(170,170,170);
  circle(700,sliderY,50);
  noFill();
  circle(125,575,200);
  image(apple, 125,575,150,150);
  circle(340,575,200);
  image(pen, 340,575,150,150);   
  circle(555,575,200);
  image(pineapple, 555,575,150,150);
  if (image==1){
    circle(350,200,d);
        image(apple, 350,200,r,r);
  }
  if (image==2){
    circle(350,200,d);
        image(pen, 350,200,r,r);
  }
  if (image==3){
    circle(350,200,d);
        image(pineapple, 350,200,r,r);
  }
  if(mouseX>650&&mouseX<780&&mouseY>675&&mouseY<740){
    fill(0);
  }else{
    fill(255);
  }
  rect(650,675,130,65);
  if(mouseX>650&&mouseX<780&&mouseY>675&&mouseY<740){
    fill(255);
  }else{
    fill(0);
  }
  text("SAVE",715,707.5);
  fill(0);
  }

void sliderY(){
  if (mouseX<725&&mouseX>675&&mouseY<300&&mouseY>150){
    sliderY=mouseY;
    d=map(sliderY, 150,300,50,300);
    r=map(sliderY, 150,300,37.5,225);
  }
}


void mouseDragged(){
  sliderY();
}
