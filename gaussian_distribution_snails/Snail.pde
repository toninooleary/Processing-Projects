class Snail{
  float h;
  float w;
  int x;
  int y;
  color trail;
  
  Snail(float w, float h){
    this.h = h;
    this.w = w;
    this.x = width/2;
    this.y = height/2;
    this.trail = color(int(random(255)), int(random(255)), int(random(255)));
  }
  
  void walk(){
    display(trail);
    
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
    
    display(color(150, 255));
  }
  
  void display(color c){
    fill(c);
    noStroke();
    ellipse(x, y, w, h);
  }
  
  void finishWalking(){
    display(trail);
  }
  
  
}
