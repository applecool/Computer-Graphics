int num_lines=40;
float feather_height;

void setup()
{
  size(400, 400);
  feather_height=float(height)/num_lines;
}

void draw()
{
  background(0);
  
  stroke(255);
  noFill();
  
  //Draw peacock feather
  line(width/2,0,width/2,height);
  
  float len_denom=num_lines*4/5;
  for(int i=0; i<num_lines;i++)
  {
    if(i<num_lines*4/5)
    {
      arc(width/2, i*feather_height/2,i*feather_height,i*feather_height,-PI/2+2*i/len_denom,PI/2);
      arc(width/2, i*feather_height/2,i*feather_height,i*feather_height,PI/2,PI*3/2-2*i/len_denom);
    }else
    {
      arc(width/2,i*feather_height-height,2*width, 2*height,PI*5/12,PI*7/12);
    }
  }
  
  //Draw peacock feather eye
  noStroke();
  float ellipse_lower_y=feather_height*num_lines*2/3;
  float ellipse_center_y;
  float peacock_eye_width=feather_height*num_lines*2/3;
  float peacock_eye_width_step=peacock_eye_width/4;
  
  for(int i=3; i>=0; i--)
  {
    switch(i)
    {
      case 0:
      fill(71,67,179);
      break;
      case 1:
      fill(8,150, 232);
      break;
      case 2:
      fill(245,118,31);
      break;
      case 3:
      fill(254,249,41);
      break;
    }
    ellipse(width/2, ellipse_lower_y-peacock_eye_width_step*0.25*(i+1)*1.67+15, peacock_eye_width_step*(i+1)*1.67/2,peacock_eye_width_step*(i+1)*1.67*0.7);
  }
}
