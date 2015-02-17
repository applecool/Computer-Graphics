//Write a program to draw Grids in Processing programming language
int num_Grids = 10;

void setup(){
 size(400,400);
 smooth();
}

void draw(){

  background(255);
  stroke(0);
  
  //Draw Vertical lines
  for(int i=0; i<num_Grids; i++){
    line(width/num_Grids*i, 0, width/num_Grids*i, height);
  }
  
  //Draw Horizontal lines
  for(int i=0; i <num_Grids; i++){
    line(0, height/num_Grids*i, width, height/num_Grids*i);
  }
  
}
