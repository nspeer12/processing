import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup() {
  size(500, 500, P3D);
  minim = new Minim(this);
  player = minim.loadFile("stutter.mp3");
  sphereDetail(50);
   sphere(200);
}

void draw() {
  player.play()
  for(int i=0; i<player.bufferSize() -1;i++){
    rotateY(player.left.get(i)*50);
      fill(0,i,255); //mouseX * 2, 0, 160
  }
  background(200);
  stroke(255, 50);
  translate(250, 250, 0);

  
  rotateX(mouseY * 0.05);
}
 
