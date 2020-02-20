float posX, posY, prevX, prevY;
int numberOfLines = 100;

void setup() {
  size(500, 500);
  stroke(#F3F5BE);
  stroke(#FFEA74);
  strokeWeight(3);
  noLoop();
  posX = width/2;
  posY = height/2;
}

void draw() {
  background(#F7F7F7);
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
