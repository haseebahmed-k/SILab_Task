
final int NUM_X = 10;
final int NUM_Y = 10;
int deltaX = 0, deltaY = 0;
Circle c;
void setup() {
    size(600,600);
    deltaX = width/NUM_X;
    deltaY = height/NUM_Y;
    
    c = new Circle(width/2, height/2, 100);
}


void draw() {
  background(200);
  stroke(150);
  for(int x=0;x<=width;x+=deltaX) {
    line(x, 0, x, height);
  }
  for(int y=0;y<=height;y+=deltaY) {
    line(0, y, width, y);
  }
  
  stroke(255,0,0);  
  fill(0,255,0);
  c.draw();
} 