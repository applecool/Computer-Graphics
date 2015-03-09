void setup()
{
  size(400,400);
  noLoop();
}

void draw()
{
  DrawFlower(200,200);
  DrawFlower(100,100);
  DrawFlower(300,300);
  DrawFlower(100,300);
  DrawFlower(300,100);
}

void DrawFlower(int x, int y)
{
  fill(255,255,0);
  beginShape();
  vertex(-30+x, -30+y);
  bezierVertex(-150+x, -100+y, -150+x, 100+y, -30+x, 30+y); 
  bezierVertex(-100+x, 150+y, 100+x, 150+y, 30+x, 30+y); 
  bezierVertex(150+x, 100+y, 150+x, -100+y, 30+x, -30+y); 
  bezierVertex(100+x, -150+y, -100+x, -150+y, -30+x, -30+y); 
  endShape();
  fill(255,255,255);
  ellipse(x,y, 50,50);
}

