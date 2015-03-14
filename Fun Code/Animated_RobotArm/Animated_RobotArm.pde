float angle1, angle2, angle3;
void setup()
{
  size(400,400);
  angle1 = angle2 = angle3 = 0;
  smooth();
}

void draw()
{
  //background(200);
  translate(width/2, height/2);
  angle1 = angle1 + 0.5;
  angle2 = angle2 + 0.3;
  angle3 = angle3 + 0.3 ;
    
  drawRobotArm(angle1, angle2, angle3);
}

void drawRobotArm(float r1, float r2, float r3)
{
  pushMatrix();
 
  rotate(r1*PI/180);
  ellipse(0,0,20,20);
  
  translate(0,30);
  rect(-10, -20, 20, 40);
  
  translate(0,30);
  rotate(r2*PI/180);
  ellipse(0,0,20,20);
  
  translate(0,30);
  rect(-10, -20, 20, 40);
  
  
  translate(0,30);
  rotate(r3*PI/180);
  ellipse(0,0,20,20);
  
  translate(0,30);
  rect(-10, -20, 20, 40);
  

  popMatrix();
    
}
