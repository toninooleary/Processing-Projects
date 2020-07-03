import java.util.ArrayList;

float gaus;
ArrayList<Snail> snails = new ArrayList<Snail>(); 

void setup(){
  size(700, 500);
  background(255, 255, 204);
}

void draw(){
  
  if (mousePressed == true) {
    mousePressed();
  }
  
  if (keyPressed == true) {
    if (snails != null){
      for (Snail s: snails){
        s.finishWalking();        
        s = null;
      }
      snails = null;    
    }
  }
  
  if (snails != null){
    for (Snail s: snails){
      s.walk();
    }    
  }
  
}

void mousePressed(){
  if (snails == null){
   snails = new ArrayList<Snail>(); 
  }
  
  gaus = randomGaussian() * 50;  
  Snail p = new Snail(10, gaus);
  snails.add(p);
}
