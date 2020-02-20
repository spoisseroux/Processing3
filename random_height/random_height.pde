float posX, posY;

void setup() {
  size(540, 720);
  posY = height/2;
  background(#FFFFFF);
 
}

void draw() {
    fill(#000000);
    stroke(#FFFFFF);
    posX += 20;
    rect(posX, posY, 20, random(10, 256));
    rect(posX, posY, 20, random(-256, -10));
    if (posX >= 520) {
      delay(3000);
      background(#FFFFFF);
      posX = 0;
      
    }
    delay(256);
}

void keyPressed() {
  if(key == 's' || key == 'S') {
    saveFrame("images/random_height-###.jpg");
    println("image saved");
  }
}
