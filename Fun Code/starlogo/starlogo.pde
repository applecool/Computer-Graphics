void setup(){
 size(240,240);
 smooth();
}

void draw(){
 background(255);
 noFill();
 
 strokeWeight(11);
 ellipse(120,120,89,89);
 
 strokeWeight(0);
 fill(0);
 
 rect(112,112,16,16);
 
 triangle(120,81,112,112,128,112);
 triangle(120,159,128,128,112,128);
 triangle(81,120,112,112,112,128);
 triangle(159,120,128,112,128,128);

}
