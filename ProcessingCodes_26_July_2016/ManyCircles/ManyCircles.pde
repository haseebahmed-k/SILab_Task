
final int NUM_X = 10;
final int NUM_Y = 10;
final int NUM_CIRCLES = 5;

int deltaX = 0, deltaY = 0;
int R = 100;

Circle c;
int centerX, centerY;

void setup() {
    size(600,600);
    deltaX = width/NUM_X;
    deltaY = height/NUM_Y;
    
    centerX = width/2;
    centerY = height/2;
    c = new Circle(centerX, centerY, 45);
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
  
  float theta = (float)-Math.PI/2;
  float dtheta = (float)(2*Math.PI) / NUM_CIRCLES;
  for(int i=0;i<NUM_CIRCLES;++i) {
    c.x = centerX + (int)(R * Math.cos(theta));
    c.y = centerY + (int)(R * Math.sin(theta));
    c.draw();
    theta += dtheta;
  }
} 