int tiles = 10; //do not exceed 400
void setup() {
  size(400, 400);
  //fullScreen();
  noLoop();
}

void draw() {
  noStroke();
  for (int i = (width/tiles) - width/tiles; i < width; i += (width/tiles)){
    for(int j = (width/tiles) - width/tiles; j < height; j += (height/tiles)){
      int a = int(random(2));
      if (a == 0){
        fill(0);
      } else {
        fill(255);
      }
      square(i, j, width/tiles);
    }
  }
}

void mousePressed() {
  redraw();
}

void keyPressed() {
  if(key == 's' || key == 'S') {
    saveFrame("images/bool_grid-###.jpg");
    println("image saved");
  }
}
