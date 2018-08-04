void setup(){
size(500, 500);
background(255);
smooth();

rectMode(CENTER);
stroke(128);

for(int i = 0; i <= 100; i+=2)
  rect(35 + i, 35 + i, 50-i, 50-i);
}
