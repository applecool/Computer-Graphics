void setup()
{
  size(400,400);
}

void draw()
{
  background(255);
  smooth();
  
  int bull_width = 66;
  strokeWeight(bull_width);
  ellipseMode(CENTER);
  noFill();
  
  int bull_size_x, bull_size_y;
  for(int i=7; i>=-5; i--)
  {
    switch(i)
    {
      case -5:
            stroke(255);
      break;
      case -4:
            stroke(255);
      break;
       case -3:
            stroke(255);
      break;
       case -2:
            stroke(255);
      break;
       case -1:
            stroke(255);
      break;
      case 0:
            stroke(255);
      break;
      case 1:
            stroke(143,0,255);
      break;
      case 2:
            stroke(111,0,255);  
      break;
      case 3:
            stroke(0,0,255);
      break;
      case 4:
             stroke(0,255,0);         
      break;
      case 5:
             stroke(255,255,0);         
      break;
      case 6:
             stroke(255,127,0);         
      break;
      case 7:
             stroke(255,0,0); 
      break;
      
    }
      if(i!=0)
      {
        bull_size_x = (i+4)*bull_width;
        bull_size_y = (i+4)*bull_width; 
      }else
      {
        strokeWeight(bull_width);
        bull_size_x = (i+4)*bull_width;
        bull_size_y = (i+4)*bull_width; 
      }
   
      ellipse(width, height, bull_size_x, bull_size_y);
      
  }   
}

