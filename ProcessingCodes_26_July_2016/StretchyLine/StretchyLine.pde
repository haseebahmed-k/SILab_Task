PVector p1 = null;
PVector p2 = null;

void setup() {
    size(600,600);
}


void draw() {
  background(200);
  if(p1 != null && p2 != null) 
    line(p1.x, p1.y, p2.x, p2.y);
}

void mousePressed() {
  if(mouseButton == LEFT) {
    p1 = new PVector(mouseX, mouseY);      
  }
}

void mouseDragged() {
  if(mouseButton == LEFT) {
      p2 = new PVector(mouseX, mouseY);
  }
}