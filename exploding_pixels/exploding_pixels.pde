PImage img;
PImage img2;
PImage img3;

void setup() {
  size(1080, 1080, P3D);
  surface.setLocation(100, 100);
  ortho(-width/2, width/2, -height/2, height/2);
  img2 = loadImage("2.jpg");
  img = loadImage("1.jpg");
  img3 = loadImage("3.png");
  imageMode(CENTER);
  background(0);

  img.loadPixels(); 
  img2.loadPixels(); 
  img3.loadPixels(); 
  color col = color(img.pixels[0]);
  println(col >> 24 & 0xFF); // alpha

  //  r = (argb >> 16) & 0xFF  # Faster way of getting red(argb)
  //g = (argb >> 8) & 0xFF   # Faster way of getting green(argb)
  //b = argb & 0xFF

  noStroke();
}
int imageNum = 0;
int sceneCounter = 0;
int accumulator = 0;
color col;

void draw() {
  background(0);
  accumulator = 0;
  translate(300, 420, 0);
  rotateY(-0.5+cos(sceneCounter*0.01) * 0.3);

  rotateY(PI/3.5);
  rotateX(0.5 + cos(sceneCounter*0.01) * 0.2);



  //box(50);
  //rotateZ(sin(sceneCounter*0.01));
  //rotateX(cos(sceneCounter*0.001));
  //if (sceneCounter > 100 && sceneCounter < 200) {
  //println((1-cos((sceneCounter-101)*TWO_PI/200)));
  //}
  for (int i=0; i < 200; i++) {
    for (int j=0; j < 200; j++) {
      if (j % 1 == 0) {
        switch(imageNum) {
        case 0:
          col = color(img.pixels[accumulator]);
          break;
        case 1:
          col = color(img2.pixels[accumulator]);
          break;
        case 2:
          col = color(img3.pixels[accumulator]);
          break;
        }

        fill(col);
        push();
        //translate(-250 + j*3 + sin(j*0.1+i*0.1 + sceneCounter*0.04)*0,-250+ i*3 + tan(j*0.01 + sceneCounter*0.01)*0, tan(j*0.01 + sceneCounter*0.01)*0);


        if (sceneCounter > 200 && sceneCounter < 400) {

          if ((col >> 8 & 0xFF) % 6 == 0) {
            translate(
              -250 + j*3 + (col >> 8 & 0xFF) * (1-cos(sceneCounter*0.01)) - (1-cos((sceneCounter-201)*TWO_PI/200))*(col >> 8 & 0xFF)*0.1, 
              -250+ i*3 + (col & 0xFF) * (1-cos(sceneCounter*0.01)), 
              (col >> 16 & 0xFF) * (1-cos(sceneCounter*0.01))*0.8 
              );
          } else if ((col >> 8 & 0xFF) % 7 == 0) {
            translate(
              -250 + j*3 + (col >> 8 & 0xFF) * (1-cos(sceneCounter*0.01)), 
              -250+ i*3 + (col & 0xFF) * (1-cos(sceneCounter*0.01)) + (1-cos((sceneCounter-201)*TWO_PI/200))*(col >> 8 & 0xFF)*0.1, 
              (col >> 16 & 0xFF) * (1-cos(sceneCounter*0.01))*0.8
              );
          } else if ((col >> 8 & 0xFF) % 8 == 0) {
            translate(
              -250 + j*3 + (col >> 8 & 0xFF) * (1-cos(sceneCounter*0.01)), 
              -250+ i*3 + (col & 0xFF) * (1-cos(sceneCounter*0.01)), 
              (col >> 16 & 0xFF) * (1-cos(sceneCounter*0.01))*0.8 + (1-cos((sceneCounter-201)*TWO_PI/200))*(col >> 8 & 0xFF)*0.1
              );
          } else if ((col >> 8 & 0xFF) % 5 == 0) {
            translate(
              -250 + j*3 + (col >> 8 & 0xFF) * (1-cos(sceneCounter*0.01)) + (1-cos((sceneCounter-201)*TWO_PI/200))*(col >> 8 & 0xFF)*0.05, 
              -250+ i*3 + (col & 0xFF) * (1-cos(sceneCounter*0.01)) + (1-cos((sceneCounter-201)*TWO_PI/200))*(col >> 8 & 0xFF)*0.05, 
              (col >> 16 & 0xFF) * (1-cos(sceneCounter*0.01))*0.8
              );
          } else if ((col >> 8 & 0xFF) % 4 == 0) {
            translate(
              -250 + j*3 + (col >> 8 & 0xFF) * (1-cos(sceneCounter*0.01)) + (1-cos((sceneCounter-201)*TWO_PI/200))*(col >> 8 & 0xFF)*0.05, 
              -250+ i*3 + (col & 0xFF) * (1-cos(sceneCounter*0.01)) + (1-cos((sceneCounter-201)*TWO_PI/200))*(col >> 8 & 0xFF)*0.05, 
              (col >> 16 & 0xFF) * (1-cos(sceneCounter*0.01))*0.8 + (1-cos((sceneCounter-201)*TWO_PI/200))*(col >> 8 & 0xFF)*0.05
              );
          } else if ((col >> 8 & 0xFF) % 2 == 0) {
            translate(
              -250 + j*3 + (col >> 8 & 0xFF) * (1-cos(sceneCounter*0.01)) - (1-cos((sceneCounter-201)*TWO_PI/200))*(col >> 8 & 0xFF)*0.05, 
              -250+ i*3 + (col & 0xFF) * (1-cos(sceneCounter*0.01)) + (1-cos((sceneCounter-201)*TWO_PI/200))*(col >> 8 & 0xFF)*0.05, 
              (col >> 16 & 0xFF) * (1-cos(sceneCounter*0.01))*0.8 - (1-cos((sceneCounter-201)*TWO_PI/200))*(col >> 8 & 0xFF)*0.05
              );
          } else {
            translate(
              -250 + j*3 + (col >> 8 & 0xFF) * (1-cos(sceneCounter*0.01)), 
              -250+ i*3 + (col & 0xFF) * (1-cos(sceneCounter*0.01)), 
              (col >> 16 & 0xFF) * (1-cos(sceneCounter*0.01))*0.8
              );
          }
        } else {
          translate(
            -250 + j*3 + (col >> 8 & 0xFF) * (1-cos(sceneCounter*0.01)), 
            -250+ i*3 + (col & 0xFF) * (1-cos(sceneCounter*0.01)), 
            (col >> 16 & 0xFF) * (1-cos(sceneCounter*0.01))*0.8
            );
        }

        rect(0, 0, 3, 3);
        pop();
        accumulator++;
      }
    }
  }


  //noLoop();
  //image(img,0,0);
  sceneCounter++;
  if (sceneCounter > 628) {
    sceneCounter = 0;
    imageNum++;
    if (imageNum > 2) {
      exit();
    }
  }

  //saveFrame("D:/frames/img######.png");
}
