void setup() {
  size(500,500);
}
 
void draw() {
  background(255);
  drawCircle(width/2,height/2,500);
  drawCircle2(width/2,height/2,500);
}
 
void drawCircle(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  stroke(0);
  if(radius > 20) {
    
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
  }
}
void drawCircle2(float x, float y, float radius) {
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 1) {
    stroke(0);
    drawCircle(x + radius/(1/2), y, radius/3);
    drawCircle(x - radius/(1/2), y, radius/3);
  }
}
