void setup()
{
  size(400,400);
}

void draw()
{
  background(128);
  smooth();
  
  int bull_width = 60;
  strokeWeight(bull_width);
  ellipseMode(CENTER);
  noFill();
  
  int bull_size_x, bull_size_y;
  for(int i=4; i>=0; i--)
  {
    if(i==0)
    {
       stroke(255,255,0);
    }else if( i==1)
    {
      stroke(255,0,0);
    }else if(i==2)
    {
       stroke(0,0,255);  
    }else if(i==3)
    {
       stroke(0,0,0);
    }else if(i==4)
    {
      stroke(255,255,255);    
    }

      if(i==0)
      {
         strokeWeight(bull_width/2);
         bull_size_x = bull_width/2;
         bull_size_y = bull_width/2; 
       
      }else
      {
         bull_size_x = i*bull_width;
         bull_size_y = i*bull_width; 
      }
   
      ellipse(width/2, height/2, bull_size_x, bull_size_y);    
  }   
  
}

