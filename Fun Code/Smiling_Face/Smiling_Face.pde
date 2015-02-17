float Face_Ratio = 0.83;

void setup(){
  size(240,240);
  smooth();
}

void draw(){

  background(255); //sets the background color to white
  
  //Draw Face
  strokeWeight(2);
  stroke(0);
  fill(255,255,0);
  ellipse(width/2, height/2, width*Face_Ratio, height*Face_Ratio);
  
  //Use Variable to set mouth size
  float arc_Width = width/2 + width*(1-Face_Ratio)/2;
  float arc_Height = height/2+height*(1-Face_Ratio)/2;
  arc(width/2,height/2,arc_Width,arc_Height, PI*0.2,PI*0.8);
}
