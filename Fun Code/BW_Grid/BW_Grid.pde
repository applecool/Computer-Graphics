void setup()
{
  size(400,400);
}

void draw()
{
  background(0);
  stroke(255);
  
  for(int i=0; i<10; i++)
    line(0, i*height/10, width, i*height/10);
  
    for(int i=0; i<10; i++)
      line(i*width/10, 0, i*width/10, height);
}
