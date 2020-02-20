 PImage img1, img2;

void setup() {
  size(900,450);
  img1 = loadImage("x-2017-09-18-at-9.40.57-AM.jpg");
  image(img1, 0, 0, width, height);
  
  background(#FFC6C4);
  noStroke();
  noFill(); 
  
  //back rock
  color a = color(#A678AA);
  fill(a);
  circle(40, 100, 140);
  
  //mid rock
  color b = color(#F083FA);
  fill(b);
  circle(110, 210, 250);
  
  //front rock
  color c = color(#8B2293);
  fill(c);
  circle(50, 250, 150);
  
  //particle 1
  color d = color(#EDA1F5);
  fill(d);
  circle(250, 75, 100);
  
  //sun
  color e = color(#FEF2FF);
  fill(e);
  circle(450, 0, 70);
  
  //particle 2
  color f = color(#CC9ED1);
  fill(f);
  ellipse(600, 70, 70, 140);
  
  //particle 3
  color g = color(#AF7AB4);
  fill(g);
  ellipse(800, 100, 90, 160);
  
  //right rock
  color h = color(#745B76);
  fill(h);
  circle(860, 300, 150);
  
  color i = color(#FFC276);
  fill(i);
  quad(0, 290, 0, 450, 900, 450, 900, 290);
  
  color j = color(#FFC883);
  fill(j);
  triangle(0, 290, 450, 170, 900, 290);
  
  img2 = loadImage("SyRZrUX.jpg.png");
  image(img2, 350, 100, 160, 160);
}
