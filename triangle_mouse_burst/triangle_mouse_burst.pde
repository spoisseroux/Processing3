void setup() {
  size(450,450);
  background(#FFFCFD);
}

void draw() {
  triangle(mouseX, mouseY , random(0, 400), random(0, 400), 
  random(0, 400), random(0, 400));
}
