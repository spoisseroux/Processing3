float posX, posY, prevX, prevY;
int numberOfLines = 100;

void setup() {
  fullScreen();
  stroke(#000000);
  strokeWeight(3);
  noLoop();
  posX = width/2;
  posY = height/2;
}

void draw() {
  background(#FFFFFF);
  for(int i = 0; i < numberOfLines; i++) {
    prevX = posX;
    prevY = posY;
    
    posX = random(width);
    posY = random(height);
    
    line(prevX, prevY, posX, posY);
  }
}

void mousePressed() {
  redraw();
}

void keyPressed() {
  if(key == 's' || key == 'S') {
    saveFrame("images/random_lines-###.jpg");
    println("image saved");
  }
}
