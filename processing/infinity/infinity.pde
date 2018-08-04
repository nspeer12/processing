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

  for(int i = 0; i < NUM_LINES; i++){
  line(x1(t+i), y1(t+i), x2(t+i), y2(t+i));
   }
  //point(x1(t), y1(t));
  //point(x2(-t), y2(-t));
  t++;
}


 
float x1(float t){
  return (sin(t/10)*100) + (sin(t/10)) / 3.1415926;
}

float y1(float t){
  return cos(t/10)* sin(t/10) * 100;
}

float x2(float t){
  return (sin(t/10)*100) + (sin(t/10)) / 3.1415926;
}

float y2(float t){
  return -cos(t/10)* sin(t/10) * 100 * .8 ;
}
