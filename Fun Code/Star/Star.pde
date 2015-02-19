int n=5;
float len=150;
float gen=50;

void setup()
{
  size(400,400);
  smooth();
}

void draw()
{
  float cx = width/2;
  float cy = height/2;
  
  beginShape();
  
  for(int i =0; i<n; i++)
  {
    float x = len*sin(2*PI*i/n) + cx;
    float y = len*cos(2*PI*i/n) + cy;
    
    vertex (x,y);
    
    float x1 = gen*sin(2*PI*i/n+PI/n) + cx;
    float y1 = gen*cos(2*PI*i/n+PI/n) + cy;
    
    vertex (x1,y1);
  }
  endShape(CLOSE);
}
