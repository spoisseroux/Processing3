float posX, posY, prevX, prevY, posX2, posY2, prevX2, prevY2;
int numberOfLines = 10;

void setup() {
  size(720, 540);
  noStroke();
 
  //background colors
  //fill(#FF0011);
  //rect(0, 0, width/2, height);
  //fill(#39FF2C);
  //rect(360, 0, width/2, height);
 
  //foreground colors to look the same
  //fill(#98FFE6);
  //rect(((width/4)-50), (height/2)-50, 100, 100);
  //fill(#A5F5FF);
  //rect(((width/4)*3)-50, (height/2)-50, 100, 100);
  
  //stroke(#FF48ED);
  //strokeWeight(5);
  //noLoop();
  //posX = (width/2) -5;
  //posY = (height/2);
  
  //posX2 = posX + (width/2) +10;
  //posY2 = posY;
}

void draw() {
  noStroke();
  //background colors
  fill(#e3e3e3);
  rect(0, 0, width/2, height);
  fill(#ececec);
  rect(360, 0, width/2, height);
  
  strokeWeight(8);
  noLoop();
  posX = random((width/2) -5);
  posY = random(height/2);
  
  posX2 = posX + (width/2) +10;
  posY2 = posY;
  
  for(int i = 0; i < numberOfLines; i++) {
    prevX = posX;
    prevY = posY;
    
    prevX2 = posX2;
    prevY2 = posY2;
    
    posX = random(width/2) - 5;
    posY = random(height);
    
    posX2 = (posX) + (width/2) + 10;
    posY2 = posY;
    
    stroke(#e7e7e7);
    line(prevX, prevY, posX, posY);
    
    stroke(#e6e6e6);
    line(prevX2, prevY2, posX2, posY2);
  }
}

//void mousePressed() {
//  redraw();
//}

void keyPressed() {
  if(key == 's' || key == 'S') {
    saveFrame("images/random_nude-###.jpg");
    println("image saved");
  }
  if (key == ' ') {
      redraw();
  }
}
