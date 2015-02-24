float time =0.0;

void setup()
{
  size(400,400);
}

void draw ()
{
  time=time+0.1;
  strokeWeight(1);
  translate(width/2,height/2);
  
  ellipse(0,0,200,200);
  for(int i=0;i<12;i++)
  {
    pushMatrix();
    rotate(2*i*PI/12);
    line(80,0,100,0);
    popMatrix();
  }
  
  beginShape(); //hour hand
  strokeWeight(4);
  rotate(time/12);
  line(0,0,55,0);
  triangle(55,-2,55,2,60,0);
  endShape();
  
  
  beginShape(); //min hand
  strokeWeight(2);
  rotate(time);
  line (0,0,0,-70);
  triangle(-2,-70,2,-70,0,-77);
  endShape();
 
}
