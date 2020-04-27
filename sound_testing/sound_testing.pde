import processing.video.*;

static final String CAMERA_NAME = "FaceTime HD Camera";
Capture video;
color black = #000000;
float triCount = 0;
int pixelSize = 2;

void setup() {
  size(640,480,P3D);
  background(000000);
  noStroke();
  smooth();
  saturation(0);
  
  //load capture
  video = new Capture(this, width/2, height/2, CAMERA_NAME);
  video.start();
  
}

void draw() {
  clear();
  mirrorCam();
  addFilter();
  //tri3D();
 
}

void mirrorCam() {
  pushMatrix();
  scale(-1,1);
  translate(100, 100, 0);
  rotateX(-PI/8);
  rotateY(-PI/8);
  rotateZ(PI/8);
  tint(0, 153, 204);
  image(video, 2.4*(-width/4), height/4);
  popMatrix();
}

void tri3D() {
  pushMatrix();
  translate(1.4*width/2, height/2, 0);
  stroke(255);
  rotateX(PI/2);
  rotateZ(-PI/6 + triCount);
  noFill();

  beginShape();
  vertex(-100, -100, -100);
  vertex( 100, -100, -100);
  vertex(   0,    0,  100);

  vertex( 100, -100, -100);
  vertex( 100,  100, -100);
  vertex(   0,    0,  100);

  vertex( 100, 100, -100);
  vertex(-100, 100, -100);
  vertex(   0,   0,  100);

  vertex(-100,  100, -100);
  vertex(-100, -100, -100);
  vertex(   0,    0,  100);
  endShape();
  popMatrix();
  rotateY(triCount += .006);
  if (triCount == 360) {
    triCount = 0;
  }
  //box(100);
}

void captureEvent(Capture video) {
  //updates video
  video.read();
  //video.filter(THRESHOLD, 0.3);
}


void keyPressed() {
  //pause/play song with space
  if(key == ' '){
    
  }
}

void addFilter() {
  video.loadPixels();
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      //int loc = x + y * video.width;
      //color currentColor = video.pixels[loc];
      //float r = red(currentColor);
      //float g = green(currentColor);
      //float b = blue(currentColor);
      //if (r+g+b < 200) {
      //  video.pixels[loc] = #000000;
      //} else {
      //  video.pixels[loc] = #FFFFFF;
      //}
      //if (video.pixels[loc] == #FFFFFF) {
      //  //translate(10, 10, 0);
      //}
      int loc = x + y * video.width; 
      color c = video.pixels[loc]; 
      float z = brightness(video.pixels[loc]);
      if (z > 200) {
        z = 200;
      }        
      pushMatrix();
      translate(x,y,z);
      fill(c);
      noStroke();
      rect(150,125,pixelSize,pixelSize);
      popMatrix(); 
    }
  }
  video.updatePixels();
}
