void setup() {
    background(255);
    size(400,400);
}

void draw(){
}

void mousePressed(){
    strokeWeight(25);
    fill(mouseY,100,mouseX);
    ellipseMode(CENTER);
    ellipse(mouseX,mouseY,200,200);
} 

void keyPressed(){
    strokeWeight(25);
    fill(mouseX,100,mouseY);
    rect(mouseX,mouseY,150,150);
}
