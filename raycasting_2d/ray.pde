class ray{
  PVector pos, dir;
  ray(int x, int y){
    //co-ordinates of the ray's position
    this.pos = new PVector(x, y);
    //direction of the ray
    this.dir = new PVector(1, 0);
  }
  
  void lookAt(int x, int y){
    this.dir.x = x - this.pos.x;
    this.dir.y = y - this.pos.y;
    this.dir.normalize();
  }
  
  void show(){
    stroke(0);
    push();
    translate(this.pos.x, this.pos.y);
    line(0, 0, dir.x * 10, dir.y * 10);
    pop();
  }
  
  PVector cast(boundary wall){
    //The wall's(boundary's) end and start points
    float x1 = wall.a.x;
    float y1 = wall.a.y;
    float x2 = wall.b.x;
    float y2 = wall.b.y;
    
    //
    float x3 = this.pos.x;
    float y3 = this.pos.y;
    float x4 = this.pos.x + this.dir.x;
    float y4 = this.pos.y + this.dir.y;
    
    
    float denominator = (x1 -x2) * (y3 - y4) - (y1 - y2) * (x3 - x4);
    if (denominator == 0) {
      return null;
    }
    
    float t = ((x1 -x3) * (y3 - y4) - (y1 - y3) * (x3 - x4)) / denominator;
    float u = -((x1 - x2)* (y1 - y3) - (y1 - y2) * (x1 - x3)) / denominator;
    if (t > 0 && t < 1 && u > 0){
      PVector point = new PVector();
      point.x = x1 + t * (x2 - x1);
      point.y = y1 + t * (y2 -y1);
      return point;
    } else{
      return null;
    }
  }
}
