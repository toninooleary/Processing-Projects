import java.util.ArrayList;

float gaus;
ArrayList<Bee> bees = new ArrayList<Bee>(); 

void setup(){
  size(700, 500);
}

void draw(){
  background(255);
  
  for (Bee b: bees){
    b.walk();
    b.display();
  }
  
  if (mousePressed == true) {
    mousePressed();
  }
  
}

void mousePressed(){
  gaus = randomGaussian() * 50;  
  Bee p = new Bee(10, gaus);
  bees.add(p);
}
