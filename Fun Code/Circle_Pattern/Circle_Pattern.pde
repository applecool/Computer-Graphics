void setup()
{
  size(400,400);
  smooth();
}

void draw()
{
  background(255);
  noFill();
    
  for(int i=0; i<width; i+=80)
    for(int j=0; j<width; j+=80)
    {
        float radius = 40;
        while(radius>2)
        {
          strokeWeight(radius/10);
          ellipse(i+40,j+40, radius*2, radius*2); 
          radius = radius/1.5;
        }
       
    }  
}
