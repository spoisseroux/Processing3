import processing.video.*;
import processing.sound.*;

//PRESS SPACE ONCE TO PLAY

//OPTIONS
int pixelSize = 2;
boolean whiteBG = true;
//OPTIONS END

Movie video;
Movie back;
SoundFile song;
Amplitude loudness;
color black = #000000;
float volume;
float rotX = 0;
float rotY = 0;
int clearInt = 1;

void setup() {
  size(950,600,P3D);
  frameRate(30);
  if (whiteBG == true) {
    background(#FFFFFF);
  }
  
  //load VOID
  video = new Movie(this, "gradient.mp4");
  song = new SoundFile(this, "silence.mp3");
  
  loudness = new Amplitude(this);
  loudness.input(song);
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
  //video behind
  image(video, width/4-72, height/4-45);

  addFilter();
  //saveFrame("frames/frame-#########.png");
}

void addFilter() {
  video.loadPixels();
  volume = loudness.analyze();
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      int loc = x + y * video.width; 
      color currentColor = video.pixels[loc]; 
      float z = brightness(video.pixels[loc]);
      if (z > 200) {
        //z = 200;
        z = 100;
      }
      if (z < 10) {
        z = -10;
      }
      if (volume < 0.2) {
        rotX = -.075;
        rotY = -.1;
      }
      if (volume > 0.2 && volume < 0.25) {
        rotX = .1;
        rotY = .025;
      }
      if (volume > 0.25 && volume < 0.3) {
        rotX = -.1;
        rotY = -.075;
      }
      if (volume > 0.3 && volume < 0.35) {
        rotX = .1;
        rotY = .025;
      }
      if (volume > 0.35 && volume < 0.4) {
        rotX = -.1;
        rotY = -.075;
      }
      if (volume > 0.4 && volume < 0.45) {
        rotX = .1;
        rotY = .025;
      }
      if (volume > 0.45 && volume < 0.5) {
        rotX = -.1;
        rotY = -.075;
      }
      if (volume > 0.5 && volume < 0.55) {
        rotX = .1;
        rotY = .025;
      }
      if (volume > 0.55 && volume < 0.6) {
        rotX = .1;
        rotY = .025;
      }
      if (volume > 0.6 && volume < 0.65) {
        rotX = -.1;
        rotY = -.075;
      }
      if (volume > 0.65 && volume < 0.7) {
        rotX = .1;
        rotY = .025;
      }
      if (volume > 0.7 && volume < 0.75) {
        rotX = -.1;
        rotY = -.075;
      }
      if (volume > 0.75 && volume < 0.8) {
        rotX = .1;
        rotY = .025;
      }
      if (volume > 0.8 && volume < 0.85) {
        rotX = -.1;
        rotY = -.075;
      }
      if (volume > 0.85 && volume < 0.9) {
        rotX = -.1;
        rotY = -.075;
      }
      if (volume > 0.9 && volume < 0.95) {
        rotX = .1;
        rotY = .025;
      }
      if (volume > 0.95 && volume < 1) {
        rotX = .05;
        rotY = .1;
        z+=random(0,3);
      }
      pushMatrix();
      
      //rotate according to amp
      rotateX(rotX*PI/32);
      rotateY(rotY*PI/32);
      translate(x,y,z);
      
      fill(currentColor);
      noStroke(); 
      //rect(260, 190, pixelSize,pixelSize);
      rect(150, 110, pixelSize,pixelSize);
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
    
    //video volume down, song volume up to analyze amp
    video.volume(0);
    song.play();
  }
}
