//We need a boundary. (A line to stop rays)
//A ray has a position and direction.
//A function is needed to tell whether the boundary is hit.
//if it does hit the boundary, give the point

boundary wall;
ray beam;

void setup(){
  size(400, 400);
  wall = new boundary(300, 100, 300, 300);
  beam = new ray(100, 200);
}

void draw(){
  background(240);
  wall.show (); 
  beam.show();
  
  PVector intersectPt = beam.cast(wall);
  if (intersectPt != null){
    fill(0);
    ellipse(intersectPt.x, intersectPt.y, 8, 8);
  }
  beam.lookAt(mouseX, mouseY);
}
