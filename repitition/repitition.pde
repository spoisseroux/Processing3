int x = 500;
int last = 0;

void setup() {
  size(500, 500);
  background(255);
  //noLoop();
}

void draw() {
  int m = millis() - last;
  noLoop();
  setup();
  scene1();
  loop();
  if (m > 2000) {
    noLoop();
    setup();
    scene2();
    loop();
  }
  if (m > 4000) {
    noLoop();
    setup();
    scene3();
    loop();
  }
  if (m > 6000) {
    last = millis();
    delay(5);
  }
}

void scene1() {
  float ran = (random(40, 60));
for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      x -= 2;
      square(i+x, j+x, ran);
      square(i+200+x, j+x, ran);
      ran-=random(0.1, 0.6);
    }
  }
  x=500;
  delay(2000);
}

void scene2() {
  float ran = (random(90, 110));
for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      x -= 2;
      square(i-x, j+x, ran);
      square(i-200+x, j+x, ran);
      ran-=random(0.1, 0.6);
    }
  }
  x=500;
  delay(2000);
}

void scene3() {
  float ran = (random(90, 110));
for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      x -= 2;
      square(i-x, j+x, ran);
      square(i+130+x, j-x, ran);
      ran-=random(0.1, 0.6);
    }
  }
  x=500;
  delay(2000);
}
