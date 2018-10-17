import java.awt.Rectangle;

PFont f;
PImage happy;
PImage angry;
int speedHappy = 50;
int x = 300;
int y = 600;
int speed1 = 7;
int speed2=5;
int speed3=4;
int speed4=6;
int speed5=8;
int speed6=9;
int xBounce = 0;
int xBounce2 = 650;
int xBounce3 = 200;
int xBounce4 = 450;
int xBounce5 = 100;
int xBounce6 = 550;
int state = 0;
//0=homescreen,1=playinggame,2=gameover,3=youwin
 
 khosfafd

Rectangle rect;
Rectangle rect1;
Rectangle rect2;
Rectangle rect3;
Rectangle rect4;
Rectangle rect5;
Rectangle rect6;


void setup(){
 size(700,700);
  background(255);
  
   f = createFont("Arial", 36, true);
   
   happy = loadImage("happy.png"); 
 angry = loadImage("angry.png");
}




void draw() {
  
  if(state==0){
    background(0,255,0);
    fill(255);
    rect(170,350,350,100);
    fill(0);
    text("Welcome To Frogger",175,250);
    text("Click Here to Play",200,400);
    textFont(f);
  }
  
  
if(state==1){
  background(#0FE5FF);
  
  
  
  
  
  
  xBounce+=speed1;
  if(xBounce>650||xBounce<0){
   speed1*=-1;   
  }
  xBounce2+=speed2;
  if(xBounce2>650||xBounce2<0){
   speed2*=-1;   
  }
  
  xBounce3+=speed3;
  if(xBounce3>650||xBounce3<0){
   speed3*=-1;   
  }
  xBounce4+=speed4;
  if(xBounce4>650||xBounce4<0){
   speed4*=-1;   
  }
  
   xBounce5+=speed5;
  if(xBounce5>650||xBounce5<0){
   speed5*=-1;   
  }
  xBounce6+=speed6;
  if(xBounce6>650||xBounce6<0){
   speed6*=-1;   
  }
  
  
  
 
  rectMode(CORNER);
   fill(0);
   rect(x,y, happy.width/3*2, happy.height/3*2);
  rect(xBounce2, 125,50,50);
rect(xBounce5, 275, 50, 50);
rect(xBounce3, 425,50,50);
rect(xBounce6, 200, 50, 50);
rect(xBounce, 350,50,50);
rect(xBounce4, 500, 50, 50);
rect = new Rectangle(x, y, happy.width/3*2, happy.height/3*2);
 rect1 = new Rectangle(xBounce2, 125, 50, 50);
  rect2 = new Rectangle(xBounce5, 275, 50, 50);
  rect3 = new Rectangle(xBounce3, 425, 50, 50);
  rect4 = new Rectangle(xBounce6, 200, 50, 50);
  rect5 = new Rectangle(xBounce, 350, 50, 50);
  rect6 = new Rectangle(xBounce4, 500, 50, 50);
  
 if(rect.intersects(rect1)){

  state=2;
 }
 if(rect.intersects(rect2)){

  state=2;
 }
 if(rect.intersects(rect3)){
 
   state=2;
 }
 if(rect.intersects(rect4)){

   state=2;
 }
 if(rect.intersects(rect5)){

   state=2;
 }
 if(rect.intersects(rect6)){

   state=2;
 }
  
  image(angry, xBounce2, 125, angry.width/2, angry.height/2);
  image(angry, xBounce5, 275, angry.width/2, angry.height/2);
  image(angry, xBounce3, 425, angry.width/2, angry.height/2);
  image(angry, xBounce6, 200, angry.width/2, angry.height/2);
  image(angry, xBounce, 350, angry.width/2, angry.height/2);
  image(angry, xBounce4, 500, angry.width/2, angry.height/2);
 image(happy, x, y, happy.width/3*2, happy.height/3*2);
 
 
 
 if(y-speedHappy==0){

   state=3;
   
 }
}
else if(state==2){
 // text("You Lose",50,350);
 background(#F52A2A);
 fill(255);
  rect(140,350,410,100);
  
  fill(0);
  text("You Lose!!!",250,250);
  text("Click Here to Play Again",150,400);
  textFont(f);
  //direction=2;

 
}

else if(state==3){
  //text you win play again
  background(#F3FC00);
  fill(255);
  rect(140,350,410,100);
  
  fill(0);
  text("You Win!!!",250,225);
  text("Congratulations",215,275);
  text("Click Here to Play Again",150,400);
  textFont(f);
  //direction=2;

}
}
 
 
 void keyPressed() {
   

  if (keyCode == UP) { 
    y = y - speedHappy;
  }
  else if (keyCode == DOWN&&y<600) { 
    y = y + speedHappy;
  }
  else if (keyCode == LEFT&&x>0) { 
    x = x - speedHappy;
  }
  else if (keyCode == RIGHT&&x<630) { 
    x = x + speedHappy;
  }
 
 }
 
 void mousePressed(){
   if(state==0){
   if(mouseX>170&&mouseY>350&&mouseX<520&&mouseY<450){
     state=1;
x = 300;
y = 600;
//direction = 0;

 xBounce = 0;
xBounce2 = 650;
   }
   }
     if(state==2){
   if(mouseX>140&&mouseY>350&&mouseX<550&&mouseY<450){
     state=1;
x = 300;
y = 600;
//direction = 0;

 xBounce = 0;
xBounce2 = 650;
   }
   }
    if(state==3){
   if(mouseX>140&&mouseY>350&&mouseX<550&&mouseY<450){
     state=1;
x = 300;
y = 600;
//direction = 0;

 xBounce = 0;
xBounce2 = 650;
   }
   }
   
 }
