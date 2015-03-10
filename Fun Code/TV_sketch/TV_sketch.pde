void setup()
{
  size(400,400);
}

void drawTV(int x, int y)
{
 pushMatrix();
 translate(x,y);
 beginShape();
   rect(0, 0, 90, 50);
   rect(5, 50, 75, 4);
   rect(24, 54, 6, 6);
   rect(64, 54, 6, 6);
   rect(15, 60, 65, 10);
   rect(10, 70, 75, 2);  
  endShape();
  popMatrix();
}


void draw()
{
for(int i=0; i<4; i++)
{
  for(int j=0; j<4; j++)
  {
       drawTV(i*100, j*100);
  }
}

}         


