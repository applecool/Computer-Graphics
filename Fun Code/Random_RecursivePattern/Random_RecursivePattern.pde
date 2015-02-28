int num_block;

void setup()
{
  size (500, 500);
  num_block=6;
}

void draw()
{
  background(0, 153, 153);
  smooth();
  fill(255, 255, 153);
  int start_x, start_y;
  for(int j=0; j<num_block; j++)
  {
    start_y= j*(height/num_block);
    for(int i=0; i<num_block; i++)
    {
      start_x = i*(width/num_block);
      
      if((j%2==0 && i%2==0) || (j%2==1 && i%2==1))
      {
        rect(start_x, start_y, width/num_block, height/num_block);
        ellipse(start_x, start_y, width/num_block, height/num_block);
        
      }
    }
  }
}
