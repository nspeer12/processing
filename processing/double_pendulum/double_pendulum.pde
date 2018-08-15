float r1 = 100;
float r2 = 100;
float m1 = 10;
float m2 = 10;
float a1 = 1;
float a2 = 0;
float a1_v = 0;
float a2_v = 0;
float a1_a = .0001;
float a2_a = .0001;


void setup(){
  
  size(600,600);
  
}


void draw(){
  background(255);
    stroke(0);
  strokeWeight(2);
  
  translate(300,200);
  
  
  float x1 = r1 * sin(a1);
  float y1 = r1 * cos(a1);
  
  line(0,0,x1,y1);
  fill(0);
  ellipse(x1, y1, m1, m2);
  
  
  float x2 = x1+ r2 * sin(a2);
  float y2 = x1 + r2 * cos(a2);
  
  
  line(x1, y1, x2, y2);
  fill(0);
  ellipse(x2,y2,m2,m2);
  
  a1 += a1_v;
  a2 += a2_v;
  
  a1_v = a1_a * mouseX/10 % 0.1;
  a2_v = a2_a * mouseY/10 % 0.1;
  
  
  
  
}
