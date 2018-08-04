// parametric equations
//pair of equations
//ex: x=5t
// y = 3t+3
float t;
static final int NUM_LINES = 10;
void setup(){
  background(20);
  size(500,500);
}

void draw(){
  background(20);
  stroke(255);
  strokeWeight(3);
  
  translate(width/2, height/2);
  rotate(0);
  for(int i = 0; i < NUM_LINES; i++){
    stroke(0, sin(t/5) * 100 + 150, 255 % t);

   // line(x1(t+i), y1(t+i), x2(t+i), y2(t+i));
    //line(x2(t+i), y2(t+i), x3(t+i), y3(t+i));
    //line(-x3(t+i), -y3(t+i), x4(t+i), y4(t+i));
    //line(-x4(t-i), -y4(t-i), x1(t+i), y1(t+i));
  //  line(-x4(t-i)-500, -y4(t-i), x1(t+i), y1(t+i));
    //line(-x4(t-i)+150, -y4(t-i), x1(t+i)+150, y1(t+i));
   // line(x4(t-i)-150, y4(t-i), x1(t+i)-150, y1(t+i));
   rotate(mouseX % 100);
    line(-x4(t-i), -y4(t-i), x1(t+i), y1(t+i));
  }
  //point(x1(t), y1(t));
  //point(x2(-t), y2(-t));
  t++;
}


 
float x1(float t){
  return sin(t/5) *100;
}

float y1(float t){
  return cos(t/5) *100;
}

float x2(float t){
  return cos(t/5) *100;
}

float y2(float t){
  return sin(t/5) *100;
}

float x3(float t){
  return sin(t/5) *100;
}

float y3(float t){
  return cos(t/5) *100;
}

float x4(float t){
  return cos(t/5) *100;
}

float y4(float t){
  return sin(t/5) *100;
}
