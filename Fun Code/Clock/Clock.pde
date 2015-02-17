void setup(){
  size(400,400);
}

void draw(){
  strokeWeight(1);
  translate(width/2,height/2);
 
   ellipse(0,0,200,200);
   for(int i=0; i<12; i++){
    pushMatrix();
    rotate(2*i*PI/12);
    line(80,0,100,0);
    popMatrix();
   } 
   
   strokeWeight(4);
   line(0,0,55,0);
   strokeWeight(2);
   line(0,0,0,-70);
}
