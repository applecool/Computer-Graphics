class Cannon
{
  public PVector loc = new PVector();
  private float r = 90;
  float cX;
  float cY;
  public Cannon(float x, float y)
  {
    loc.x = x;
    loc.y = y;
  }
  void show()
  {
    smooth();
    float angle = atan2(mouseY-loc.y,mouseX-loc.x);
    cX = (r * cos(angle)) + loc.x;
    cY = (r * sin(angle)) + loc.y;
    fill(#050505);
    noStroke();
    ellipse(loc.x,loc.y,80,80);
    noFill();
    stroke(#050505);
    strokeWeight(20);
    line(loc.x,loc.y,cX,cY);
    fill(#229CB9);
    noStroke();
    ellipse(loc.x,loc.y,70,70);
    noFill();
    stroke(#6E1E9B);
    strokeWeight(10);
    line(loc.x,loc.y,cX,cY);
  }  
}
