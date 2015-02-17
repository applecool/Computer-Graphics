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

}
