float Circle_Ratio=0.83;

void setup()
{
   size(400,400);
   smooth();
}
void draw()
{
  background(255);
  
  //Draw Face
  noStroke();
  fill(196,1,61);
  ellipse(width/2,height/2,width*Circle_Ratio,height*Circle_Ratio);
  
  //Draw Inner Circle
  noFill();
  stroke(255);
  strokeWeight(10*width/240);
  strokeCap(SQUARE);
  arc(width/2,height/2, width*160/240, height*160/240,PI*0,PI*1.5);
  
  //Draw Eye
  fill(255);
  noStroke();
  ellipse(width*90/240,height*90/240, width*25/240, height*25/240);
  
  //Draw Line Connected To Arc
  fill(255);
  stroke(255);
  line(width*145/240,height*120/240,width*205/240,height*120/240);
  
  fill(255);
   noStroke();
  
  beginShape();
  vertex(width/2, height*70/240);
  vertex(width/2, height*70/240 + height*100/240);
  vertex(width/2 + width*25/240, height*70/240 + height*100/240);
  vertex(width/2 + width*25/240,height*70/240 + height*100/240 - height*10/240);
  vertex(width/2 + width*10/240,height*70/240 + height*100/240 - height*10/240);
  vertex(width/2 + width*10/240,height*70/240);
 
  
  endShape(CLOSE);
  
  
}
