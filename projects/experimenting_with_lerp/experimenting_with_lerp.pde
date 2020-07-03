float x = 100;
float y = 200;
float targetx = 500;
float targety = 200;

float prevMouseX;
float prevMouseY;
boolean targMoving = false;

void setup(){
  size(600, 400);
}

void draw(){
  x = lerp(x, targetx, 0.05);
  y = lerp(y, targety, 0.05);
  
  if (targMoving == true){
    targetMove();
  }
  
  background(255);
  
  noStroke();
  fill(10, 10, 255, 150);  
  ellipse(targetx, targety, 50, 50);
  
  fill(160, 50, 255, 150);
  ellipse(x, y, 50, 50);
}

void mousePressed(){
  targMoving = true;
  //targetx = mouseX;
  //targety = mouseY;
  prevMouseX = mouseX;
  prevMouseY = mouseY;
}

void targetMove(){
  targetx = lerp(targetx, prevMouseX, 0.15);
  targety = lerp(targety, prevMouseY, 0.15);
  if (targetx == prevMouseX && targety == prevMouseY){
    targMoving = false;
  }
  
}
