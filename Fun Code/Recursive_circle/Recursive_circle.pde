void setup()
{
  size(400,400);
  smooth();
}

void draw()
{ 
  drawCircle(200,200, 120,-1);
}

void drawCircle(float x, float y, float radius, int angle)
{
  if(radius<1.5)
  {
    return;
  }else
  {
      ellipse(x,y, 2*radius, 2*radius);
      
      for(int i=0; i<6; i++)
      {
        if(i!=angle)
        {
              drawCircle( x+cos(i*60.0/180*PI)*radius*1.25,   y+sin(i*60.0/180*PI)*radius*1.25, radius/4, (i+3)%6);
        }
      }
 
    }
    
 }
