class Bee{
  float h;
  float w;
  int x;
  int y;
  
  Bee(float w, float h){
    this.h = h;
    this.w = w;
    this.x = mouseX;
    this.y = mouseY;
  }
  
  void walk(){
    
    int rand = int(random(4));
    if (rand == 0){
      x++;
    } else if (rand == 1){
      y++;
    } else if (rand == 2){
      x--;
    } else if (rand == 3){
      y--;
    }
    
  }
  
  void display(){
    fill(150, 100);
    noStroke();
    ellipse(x, y, w, h);
  }  
  
}
