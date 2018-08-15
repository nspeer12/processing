import ddf.minim.*;
import ddf.minim.analysis.*;
Minim minim;
AudioPlayer player;
FFT fft;

void setup()
{
  size(1920, 1080, P3D);

  minim = new Minim(this);

  player = minim.loadFile("stutter.mp3");
  fft = new FFT(player.bufferSize(), player.sampleRate());
}

void draw()
{
  background(0);

  for(int i = 0; i < player.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, player.bufferSize(), 0, width );
    float x2 = map( i+1, 0, player.bufferSize(), 0, width );
    line( x1, 50 + player.left.get(i)*50, x2, 50 + player.left.get(i+1)*50 );
    line( x1, 150 + player.right.get(i)*50, x2, 150 + player.right.get(i+1)*50 );
  
    
    beginShape();

      curveVertex(0, (sin(player.right.get(i)))*50+100);
      curveVertex(x1, (player.right.get(i))*50+100);
      curveVertex(x2, (player.right.get(i))*50+100);
    // curveVertex(x2/.75, (player.right.get(i))*50+100);
     curveVertex(1920, (player.right.get(i))*50+ 100);
    
    
    endShape();
    
   
     
    
    //line(0, player.right.get(i)*40+250, 1000, player.right.get(i)*40+250);
    
    
  }
  
     fft.forward(player.mix);
  for(int i=0;i<fft.specSize()+1920;i++){
    //really good
      fill((fft.getBand(i)*random(i))%255,((fft.getBand(i)*random(i))%255)-100,(fft.getBand(i)*random(i*2)%100)%255);
     stroke((fft.getBand(i)*random(i))%255,((fft.getBand(i)*random(i))%255)-100,(fft.getBand(i)*random(i*2)%100)%255);
     line(i*8, height-400-(fft.getBand(i)*30)%450, i*8, height - ((fft.getBand(i)*10)%100)-200);
     line(i*8.01, height-400-(fft.getBand(i)*30)%350, i*8.01, height - ((fft.getBand(i)*10)%100)-200); 
     
     fill(255,0,0);
     
  }
  

}

void keyPressed()
{
  if ( player.isPlaying() )
  {
    player.pause();
  }
  else if ( player.position() == player.length() )
  {
    player.rewind();
    player.play();
  }
  else
  {
    player.play();
  }
}
