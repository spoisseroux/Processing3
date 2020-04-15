int tiles = 10;
int count = 10;
int colorcng = 10;
int random1, random2, randomc;
color in, out1, out2, elsec;

void setup() {
  size(500, 500);
  //fullScreen();
  noLoop();
  background(#FFFFFF);
}

void draw() {
  random1 = int(random(1,8)) * 50;
  random2 = int(random(1,8)) * 50;
  randomc = int(random(1,4));
  
  if (randomc == 1) {
    in=(#EDE3E9);
  } else if (randomc == 2) {
    in=(#E3E4ED);
  } else if (randomc == 3) {
    in=(#EDE3E5);
  } else if (randomc == 4) {
    in=(#EDEDE3);
  } 
  
  out1=(in - colorcng);
  out2=(out1 - colorcng);
  elsec=(out2 - colorcng);
  
  print(mouseX, mouseY);
  print("\n");
  //delay(1000);
  background(#FFFFFF);
  //print("random: ");
  //print(random1, random2);
  noStroke();
  for (int i = (width/tiles) - width/tiles + 50; i < width - 50; i += (width/tiles)){
    for(int j = (height/tiles) - height/tiles + 50; j < height - 50; j += (height/tiles)){
      fill(#000000);
      if (i == random1 && j == random2) {
        fill(in);
        square(i+4, j+4, width/tiles -8);
      } 
      
      else if (i == random1 - 50 && j == random2) {
        //check left selected
        fill(out1);
        square(i+2, j+2, width/tiles -4);
      } else if (i == random1 + 50 && j == random2) {
        //check right selected
        fill(out1);
        square(i+2, j+2, width/tiles -4);
      } else if (i == random1 && j == random2 - 50) {
        //check above selected
        fill(out1);
        square(i+2, j+2, width/tiles -4);
      } else if (i == random1 && j == random2 + 50) {
        //check below selected
        fill(out1);
        square(i+2, j+2, width/tiles -4);
      } else if (i == random1 - 50 && j == random2 - 50) {
        //check up left selected
        fill(out1);
        square(i+2, j+2, width/tiles -4);
      } else if (i == random1 - 50 && j == random2 + 50) {
        //check down left selected
        fill(out1);
        square(i+2, j+2, width/tiles -4);
      } else if (i == random1 + 50 && j == random2 - 50) {
        //check up right selected
        fill(out1);
        square(i+2, j+2, width/tiles -4);
      } else if (i == random1 + 50 && j == random2 + 50) {
        //check left selected
        fill(out1);;
        square(i+2, j+2, width/tiles -4);
      } 
      
      else if (i == random1 + 100 && j == random2 + 100) {
        //check 2bottom right corner selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 + 100 && j == random2 + 50) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 + 100 && j == random2) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 + 100 && j == random2 - 50) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 + 100 && j == random2 - 100) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 + 50 && j == random2 + 100) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 && j == random2 + 100) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 - 50 && j == random2 + 100) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 - 100 && j == random2 + 100) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 - 100 && j == random2 - 100) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 - 100 && j == random2 - 50) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 - 100 && j == random2) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 - 100 && j == random2 +50) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 - 50 && j == random2 - 100) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 && j == random2 - 100) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } else if (i == random1 + 50 && j == random2 - 100) {
        //check bottom  selected
        fill(out2);
        square(i+1, j+1, width/tiles -2);
      } 
      
      //else if (i == random1 - 150 && j == random2 - 150) {
      //  //check bottom  selected
      //  fill(#FC0000);
      //  square(i+0.5, j+0.5, width/tiles -1);
      //  fill(#000000);
      //} 
      
      
      
      else {
        //check all others
        fill(elsec);
        stroke(#FFFFFF);
        strokeWeight(2);
        square(i, j, width/tiles);
        //print(i, j);
        //print("\n");
      }
    }
  }
}

void keyPressed() {
  if(key == 's' || key == 'S') {
    saveFrame("images/static_project-###.jpg");
    println("image saved");
  }
  
  if(key == ' '){
    redraw();
  }
}
