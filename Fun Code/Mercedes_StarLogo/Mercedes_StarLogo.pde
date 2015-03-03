void setup()
{
  size(150, 150);
  smooth();
}

void draw()
{
  background(255);
  
  noFill();
  
  strokeWeight(3);
  ellipse(80, 80, 97,97);
  
  strokeWeight(0);
  fill(0);
  //triangle(80, 33, 80+47*cos(30.0/180.0*PI), 80+47*sin(30.0/180*PI), 80-47*cos(30.0/180*PI), 80+47*sin(30.0/180*PI) );
  
  triangle(80, 33, 75, 75, 86, 75);
  triangle(39, 104, 75, 75, 80, 86);
  triangle(121, 104, 86, 75, 80, 86);
  
  rectMode(CORNERS);
  rect(75, 75, 86, 86);
}
