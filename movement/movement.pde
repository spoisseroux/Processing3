//inits
color clr;
color clrAdd = color(5, 5, 5);
int x, y, r, shiftx, shifty, count, max;

void setup() {
 size(500, 500);
 background(#000000);
 noStroke();
 frameRate(60);
 
 //lets not hit the sides
 r = height-20;
 
}

void draw() {
  
  //put to center if mouse not click (at beginning)
  if (x == 0 & y == 0) {
    x = width/2;
    y = height/2;
  }
  
  //select a random purpleish color
  clr = color(int(random(150, 170))-mouseY/15, int(random(120,173))-mouseY/15,int(random(200, 255))-mouseY/15);
  
  //so it doesnt go all over the place
  shiftx =0;
  shifty =0;
  r = height;
  
  //number of times to loop, adds variety
  max = int(random(8,17));
  
  //loop to draw circles
  for (int i = 0; i < max; i++) {
    
    //clr -= gives the weird ghost ball effect
    clr -= clrAdd;
    
    //reduce size of inner circles
    r = r - 50;
    
    //color fill just in case
    fill(clr);
    
    //determine the amount to shift the matrix
    shiftx += int(random(-5, 5));
    shifty += int(random(-5, 5));
    
    //push, translate, make circle, pop!
    pushMatrix();
    translate(shiftx, shifty);
    circle(x, y, r);
    popMatrix();
  }
  
}

void keyPressed() {
  //save photo with s
  if(key == 's' || key == 'S') {
    saveFrame("images/movement-###.jpg");
    println("image saved");
  }
  
  //n to pause
  if(key == 'n' || key == 'N') {
    noLoop();
  }
  
  //l to start
  if(key == 'l' || key == 'L') {
    loop();
  }
  
  //restart with space
  if(key == ' '){
    setup();
  }
}

//you can click to chose coords of circle
void mouseClicked() {
  x = mouseX;
  y = mouseY;
}
