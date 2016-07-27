final int NUM_X = 10;
final int NUM_Y = 10;

final int NUM_MINOR_X  = 100;
final int NUM_MINOR_Y  = 100;

int deltaX = 0, deltaY = 0;
int deltaMinorX = 0, deltaMinorY = 0;

void setup() {
    size(600,600);
    deltaX = width/NUM_X;
    deltaY = height/NUM_Y;
    
    deltaMinorX = width/NUM_MINOR_X;
    deltaMinorY = height/NUM_MINOR_Y;
}


void draw() {
  background(200);
  stroke(0);
   
  stroke(120);
  for(int x=0;x<=width;x+=deltaMinorX) {
    if(x % NUM_X != 0)
       stroke(120);
    else
       stroke(0);
    line(x, 0, x, height);
  }
  for(int y=0;y<=height;y+=deltaMinorY) {
    if(y % NUM_Y != 0)
     stroke(120);
    else
       stroke(0);
      line(0, y, width, y);
  }
} 