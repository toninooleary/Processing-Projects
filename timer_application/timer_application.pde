int scene = 0;

void setup(){
  size(700, 500);
}

void draw(){
  
  switch(scene){
  case 0:
    mainMenu();
    break;
  case 1:
    timer();
    break;
  }
}

void mainMenu(){
  background(#70A9A1);
  
  textSize(40);
  text("A Banging Timer", width/2 - 160, height/2 - 100);
  
  fill(#637175);
  noStroke();
  rect(width/2 - width/4 + 3, height/2 + 3, 350, 100);
  fill(#0B2027);
  noStroke();
  rect(width/2 - width/4, height/2, 350, 100);
  
  textSize(32);
  fill(255);
  text("Start!", width/2 - 40, height/2 + 60);
  
}

void timer(){
  background(150);
}
