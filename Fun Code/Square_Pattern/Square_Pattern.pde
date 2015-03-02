int block_x, block_y;

void setup()
{
  size(400,400);
  
  block_x = 8;
  block_y = 8;
}

void draw()
{
  background(255);
  
  //left drawing   
  smooth();
  strokeWeight(1);
  strokeCap(SQUARE);
  
  fill(0);
  int start_x, start_y;
  for(int j=0; j< (block_y); j++)
  {
    start_y = j*(height/block_y);
    for(int i=0; i< (block_x+1); i++)
    {
       start_x = i*(width/block_x);
       quad(start_x, start_y, start_x+width/(2*block_x), start_y+height/(2*block_y), start_x,  start_y+height/block_y,  start_x-width/(2*block_x),  start_y+height/(2*block_y));
       
    }
  }
}
