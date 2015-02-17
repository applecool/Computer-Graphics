int num_Circles = 10;
float band_width;

void setup(){
  
  size(400,400);
  band_width = width*0.8/num_Circles;
  smooth();
}

void draw(){
  
  background(255);
  noStroke();

  for(int i=num_Circles; i>0; i--){
    if(i%2 == 0)
      fill(0);
     else
       fill(255);

  ellipse(width/2, height/2, i*band_width, i*band_width);  
}
  
  


}
