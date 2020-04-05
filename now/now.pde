
void setup() {
  size(500, 500);
  background(#FFFFFF);
}

void draw() {
  for (int i = 0; i < width/5; i+=width/5) {
    for (int j = 0; j < height/5; j+=height/5) {
      square(i, j, 500/5);
    }
  }
}
