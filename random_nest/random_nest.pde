int y=200;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  for(int i = width + 200; i > 20; i-= 20) {
      noStroke();
      fill(random(200, 255), random(200, 255), random(200, 255));
      circle(width/2, height/2, i);
  }
  delay(300);
}

void keyPressed() {
  if(key == 's' || key == 'S') {
    saveFrame("images/random_nest-###.jpg");
    println("image saved");
  }
}
