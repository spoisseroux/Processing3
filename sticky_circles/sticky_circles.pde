int numberOfCircles = 50;
int distanceToInter = 150;
int[][] circleCoords = new int[numberOfCircles][3];

void setup() {
  size(800,600);
  background(255);
  newCircles();
}

void draw() {
  background(255);
  drawCircles();
}

void newCircles() {
  for (int i = 0; i < numberOfCircles; i++) {
      //random x y values 
      circleCoords[i][0] = int(random(width));
      circleCoords[i][1] = int(random(height));
    
      //random size
      circleCoords[i][2] = int(random(3, 10));
    }
}

void drawCircles() {
  //noStroke();
  strokeWeight(int(random(2, 4)));
  fill(0);
  for(int i = 0; i < circleCoords.length; i++) {
    if (mouseX >= circleCoords[i][0] - distanceToInter &&
    mouseX <= circleCoords[i][0] + distanceToInter &&
    mouseY >= circleCoords[i][1] - distanceToInter &&
    mouseY <= circleCoords[i][1] + distanceToInter) {
      line(mouseX, mouseY, circleCoords[i][0], circleCoords[i][1]);
    }
    circle(circleCoords[i][0], circleCoords[i][1], circleCoords[i][2]);
  }
}

void keyPressed() {
  if(key == 's' || key == 'S') {
    saveFrame("images/static_project-###.jpg");
    println("image saved");
  }
  
  if(key == ' '){
    newCircles();
  }
}
