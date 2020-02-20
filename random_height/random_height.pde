float posX, posY;

void setup() {
  size(540, 540);
  posY = height/2;
  background(#F7F7F7);
 
}

void draw() {
    fill(#5d9cfd);
    stroke(#F7F7F7);
    posX += 20;
    rect(posX, posY, 20, random(10, 256));
    rect(posX, posY, 20, random(-256, -10));
    if (posX >= 520) {
      delay(1000);
      background(#F7F7F7);
      posX = 0;
      
    }
    delay(50);
}

void keyPressed() {
  if(key == 's' || key == 'S') {
    saveFrame("images/random_height-###.jpg");
    println("image saved");
  }
}
