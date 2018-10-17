int r; 
int g; 
int b; 

int i = 0;
PFont f; 


int x = 200;
int y = 0;
int direction = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255); 
  stroke(0);
  fill(255, 0, 0);
  ellipseMode(CENTER);
  ellipse(x, y, 50, 50);
  if (direction == 0) {
    y+=5;
  } else if (direction == 1) {
    y = y - 5;
    x = x + 5;
  } else if (direction == 2) {
    y = y - 5;
    x = x - 5;
  } else if (direction == 3) {
    y = y + 5;
    x = x - 5;
  } else if (direction == 4) {
    y = y + 5;
    x = x + 5;
  }

  if (y == 400 && x == 200) {
    direction = 1;
  } else if (x == 400 && y == 200) {
    direction = 2;
  } else if (x == 200 && y == 0) {
    direction = 3;
  } else if (y == 200 && x == 0) {
    direction = 4;
  }
}
