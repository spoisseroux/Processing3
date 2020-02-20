int y=200;

void setup() {
  size(400, 400);
  noLoop();
}

void draw() {
  background(255);
  for(int i = width + 200; i > 20; i-= 20) {
      noFill();
      fill(random(200, 255), random(200, 255), random(200, 255));
      stroke(0);
      strokeWeight(2);
      circle(width/2, height/2, i);
  }
}

void mousePressed() {
  redraw();
}

void keyPressed() {
  if(key == 's' || key == 'S') {
    saveFrame("images/random_nest-###.jpg");
    println("image saved");
  }
}
