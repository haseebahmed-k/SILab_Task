class Circle {
  int x, y, radius;
 public Circle(int x, int y, int r) {
   this.x = x;
   this.y = y;
   radius = r;
 }
 
  void draw() {
   ellipse(x,y, 2*radius, 2*radius); 
  }
}