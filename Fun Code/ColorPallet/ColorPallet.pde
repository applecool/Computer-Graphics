void setup(){

  size(640,640);
}

void draw(){
 background(0);
 
 int Block_x = 32;
 int Block_y = 32;
 
 int Block_width = width/Block_x;
 int Block_height = height/Block_y;
 
 int Pallet_Step = 256/(Block_x + Block_y);
 
 for(int j=0; j<Block_y;j++){
     for(int i=0; i<Block_x; i++){
       fill((i+j)*Pallet_Step, 0 , 0);
       rect(i*Block_width, j*Block_height, (i+1)*Block_width,(j+1)*Block_height);
     }
 
 }

}
