import ddf.minim.*;
import ddf.minim.analysis.*;
Minim minim;
AudioPlayer player;
FFT fft;

Star[] stars = new Star[800];

// I create a variable "speed", it'll be useful to control the speed of stars.
float speed;
float r;
void setup() {
  size(1920, 1080);
  minim = new Minim(this);
  player= minim.loadFile("light.mp3");
   fft = new FFT(player.bufferSize(), player.sampleRate());
  player.play();
  
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  // i link the value of the speed variable to the mouse position.
  
 // r += sin(player.left.get(0)/100);
 // rotate(r);
  speed = map(250+cos(player.left.get(0))*500, 0, width,0,50);
  background(0);
  // I shift the entire composition,
  // moving its center from the top left corner to the center of the canvas.
  translate(width/2, height/2);
  // I draw each star, running the "update" method to update its position and
  // the "show" method to show it on the canvas.
  
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}
