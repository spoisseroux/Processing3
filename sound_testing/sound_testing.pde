import processing.video.*;

static final String CAMERA_NAME = "FaceTime HD Camera";
Capture video;
color black = #000000;
float triCount = 0;
int pixelSize = 1;
int num = 0;

void setup() {
  size(800,600,P3D);
  noStroke();
  smooth();
  saturation(0);
  
  //load capture
  video = new Capture(this, width/2, height/2, CAMERA_NAME);
  video.start();
  
}

void draw() {
  clear();
  //background(#FFFFFF);
  image(video, 2.4*(-width/4), height/4);
  //mirrorCam();
  addFilter();
 
}

void mirrorCam() {
  pushMatrix();
  scale(-1.5,1.5);
  translate(100, 100, 0);
  rotateX(-PI/8);
  rotateY(-PI/8);
  rotateZ(PI/8);
  tint(0, 153, 204, 126); //blue at half transpar
  
  popMatrix();
}

void captureEvent(Capture video) {
  //updates video
  video.read();
  //video.filter(THRESHOLD, 0.3);
}

void addFilter() {
  video.loadPixels();
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      int loc = x + y * video.width; 
      color currentColor = video.pixels[loc]; 
      //float r = red(currentColor);
      //float g = green(currentColor);
      //float b = blue(currentColor);
      //color newColor = color(r-25, g-25, b+75, 175);
      float z = brightness(video.pixels[loc]);
      if (z > 200) {
        z = 200;
      }        
      pushMatrix();
      rotateX(PI/8);
      rotateY(-PI/16);
      translate(x,y,z-200);
      //fill(newColor);
      fill(currentColor);
      noStroke(); 
      rect(200,150, pixelSize,pixelSize);
      popMatrix(); 
    }
  }
  video.updatePixels();
}
