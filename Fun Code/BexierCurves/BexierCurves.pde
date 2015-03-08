void setup()
{
  size(600,600);
}

void Flower(int x, int y, float s, float r)
{
  translate(x,y);
  translate(360,360);
  scale(s);
  rotate(r);
  translate(-360,-360);
  beginShape();
  vertex(288, 288); 
  bezierVertex(288, 288, 288, 144, 360, 144); 
  bezierVertex(432, 144, 432, 288, 432, 288); 
  bezierVertex(432, 288, 576, 288, 576, 360); 
  bezierVertex(576, 432, 432, 432, 432, 432); 
  bezierVertex(432, 432, 432, 576, 360, 576); 
  bezierVertex(288, 576, 288, 432, 288, 432); 
  bezierVertex(288, 432, 144, 432, 144, 360); 
  bezierVertex(144, 288, 288, 288, 288, 288); 
  endShape();
}

void draw()
{

  fill(255,255,0);
  
  Flower(-10,0, 1.0, PI/6);
  fill(255,0,0);
  Flower(60,50, 0.5, PI/4);
  Flower(160,250, 0.3, 0);
  

  

}





