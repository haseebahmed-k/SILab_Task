class Circle {
 public int x, y, radius;
 public boolean intersected;
 public Circle(int x, int y, int r) {
   this.x = x;
   this.y = y;
   radius = r;
   intersected = false;
 }
 
  void draw() {
    if(intersected)
      fill(255,0,0);
    else
      fill(255);
    ellipse(x,y, 2*radius, 2*radius); 
  }
}