class boundary{
  PVector a, b;
  
  boundary(int x1, int y1, int x2, int y2) {
    //a is the vector for the first point for the boundary to start from
    this.a = new PVector(x1, y1);
    //b is the second point that vector a connects to (this creates a line)
    this.b = new PVector(x2, y2);
  }
  
  void show(){
    stroke(0);
    line(a.x, a.y, b.x, b.y);
  }
}
