float cx, cy;
float rate = 0.05;
FancyArc[] arcs;


void setup() {
  size(400,400);
  cx = mouseX;
  cy = mouseY;
  noCursor();
  smooth();
  
  arcs = new FancyArc[4];
  arcs[0] = new FancyArc(50,TWO_PI/4, -20, 1850);
  arcs[1] = new FancyArc(90,TWO_PI/8, 200, 4125);
  arcs[2] = new FancyArc(130,TWO_PI/16, 1000, 8400);
  arcs[3] = new FancyArc(170,TWO_PI/16, 2600, 16000);
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(15);
  noFill();
  resetMatrix();
  
  cx += (mouseX - cx) * rate;
  cy += (mouseY - cy) * rate;
  
  ellipse(cx, cy, 5, 5);
  
  translate(200,200);
  rotate(atan2(cy-200,cx-200));
  
  float px = cx - 200;
  px = px * px;
  
  float py = cy - 200;
  py = py * py;
  
  float position = (px + py);
  
  arcs[0].render(position);
  arcs[1].render(position);
  arcs[2].render(position);
  arcs[3].render(position);
}

void mousePressed(){
  float px = cx - 200;
  px = px * px;
  
  float py = cy - 200;
  py = py * py;
  
  float position = (px + py);
  println(position);
}
