int num_blocks;

void setup(){
  size(400,400);
  num_blocks = 8;
}

void draw(){
  
  background(255);
  
  smooth();
  fill(0);
  int start_x, start_y;
  
  for(int j=0; j<num_blocks; j++){
    start_y = j*(height/num_blocks);
    
    for(int i=0; i<num_blocks;i++){
      start_x = i*(width/num_blocks);
    if((j%2==0 && i%2 ==0)|| (j%2==1 && i%2 ==1)){
      rect(start_x,start_y, width/num_blocks, height/num_blocks);
     }
    }// end of inner for loop
  }// end of outer for loop
  
}
