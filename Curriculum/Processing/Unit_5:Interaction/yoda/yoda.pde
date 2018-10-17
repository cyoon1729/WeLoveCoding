int j = 300;
int c = 300;

void setup(){
    size(600,600);
    background(255);
    rectMode(CENTER);
}

void draw(){
    background(255);
    fill(0,255,0);
    ellipse(j-50,c+50,60,10);
    ellipse(j+30,c+60,10,55); 
  
    fill(#F0F26E);
    ellipse(j,c+50,55,100);
  
    fill(#2AE813);
    ellipse(j,c,100,25);
    ellipse(j,c-15,60,90);
  
    fill(255);
    ellipse(j+15,c,15,15);
    ellipse(j-15,c,15,15);
  
    fill(#0D120C);
    ellipse(j+15,c,7,7);
    ellipse(j-15,c,7,7);
  
    fill(#0A4303);
    ellipse(j,c+5,5,5);
    
    fill(#0A4303);
    ellipse(j,c+20,10,10);
    
    fill(255);
    line(j-5,c+20,j+5,c+20);
    
    fill(#2AE813);
    ellipse(j-20, c+97,20,8);
    ellipse(j+20, c+97,20,8);
  
    fill(#08FF26);
    rect(j-65,c+10,8,80);
    
    fill(0);
    rect(j-65,c+45,8,20);
  
    fill(#08FF26);
    line(j-10,c-25,j+10,c-25);
    line(j-10,c-30,j+10,c-30);
    line(j-8,c-35,j+8,c-35);
}

void keyPressed(){
   if(keyCode == UP){
        c = c - 10;
    }else if(keyCode == DOWN){
        c = c + 10; 
    }else if(keyCode == RIGHT){
        j = j + 10;
    }else if(keyCode == LEFT){
        j = j - 10;
    }
}
