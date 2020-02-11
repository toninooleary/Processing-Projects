int i = 1;
int x = 700/2;
int y = 500/2;
int sec;
  
void setup(){
  size(700, 500);
  background(198, 179, 255);
}

void draw(){
  sec = millis();
  background(198, 179, 255);
  textSize(64);
  text(sec/1000, x, y);
  textAlign(CENTER);
  i++;
  fill(100, 100 + i, 100); 
}
