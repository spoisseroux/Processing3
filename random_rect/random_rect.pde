float posX, posY, rect1, rect2;
int counter;

void setup() {
  size(720, 540);
  posX = width/2; 
  posY = height/2;
  background(#FFFFFF);
  noFill();
  stroke(0);
  //noLoop();
  counter = 0;
}

void draw() {
  //for (int i = 0; i < 10; i++) {
    rect1 = random(100);
    rect2 = random(100);
    rect(posX, posY, rect1, rect2);
    posX=random(width);
    posY=random(height);
    counter += 1;
    //delay();
    if (counter > 256) {
      setup();
      //draw();
  //}
  }
}
