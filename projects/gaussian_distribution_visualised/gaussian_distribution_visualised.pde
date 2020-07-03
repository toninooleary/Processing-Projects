float x;

void setup(){
  size(700, 500);
  background(150);
}

void draw(){
  x = randomGaussian() * 75;
  fill(0, 15);
  noStroke();
  ellipse(width/2 + x, height/2, 15, 25);
}
