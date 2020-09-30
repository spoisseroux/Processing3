import processing.video.*;
import processing.sound.*;

//PRESS SPACE ONCE TO PLAY

//OPTIONS
int pixelSize = 1;
boolean whiteBG = true;
//OPTIONS END

Movie video;
Movie back;
color black = #000000;
int clearInt = 0;

void setup() {
  size(950,600,P3D);
  frameRate(30);
  if (whiteBG == true) {
    background(#FFFFFF);
  }

  //load VOID
  video = new Movie(this, "void.mp4");
}

void draw() {
  if (whiteBG == true) {
    background(#FFFFFF);
  }
  //clearInt decides if clear
  if (int(random(30)) == 9) {
    clearInt += 1;
  }
  if (clearInt%2 == 0) {
    clear();
    if (whiteBG == true) {
      background(#FFFFFF);
    }
  } 
  //ventolin
  image(video, width/4+20, height/4+43);
  addFilter();
  //saveFrame("frames/frame-#########.png");
}

void addFilter() {
  video.loadPixels();
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      int loc = x + y * video.width; 
      color currentColor = video.pixels[loc]; 
      float z = brightness(video.pixels[loc]);
      if (z > 200) {
        z = 200;
      }
      if (z < 10) {
        z = -10;
      }
      
      pushMatrix();

      translate(x,y,z);

      fill(currentColor);
      noStroke(); 
      rect(260, 190, pixelSize,pixelSize);
      popMatrix(); 
    }
  }
  video.updatePixels();
}


void movieEvent(Movie video) {
  //updates video
  video.read();
}

void keyPressed() {
  if(key == ' '){
    video.play();
  }
}
