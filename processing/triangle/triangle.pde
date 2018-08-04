void setup(){
  size(500,500);
  
  stroke(255,0,0);
}


float t = 0;
float x = 0;
static int buffer = 10;
void draw(){
  background(0);
  for(int i =0; i<10; i++){
    line(x(250*t), y(100*t), x2(350*t), y2(300*t));
    line(x2(350*t),y2(300*t),x3(150*t),y3(300*t));
    line(x3(150*t),y3(300*t),x(250*t),y(100*t));
    
  }
   
    
   if(x<10){
    x += 1;
    t = x/10;
  }else if (x >=10 && x<20){
    x+=1;
    t = -x/10;
  }
}



float x(float t){
  return t;
}

float y(float t){
  return t;
}

float x2(float t){
  return t;
}

float y2(float t){
  return t;
}


float x3(float t){
  return t;
}

float y3(float t){
 return t;
}


  
