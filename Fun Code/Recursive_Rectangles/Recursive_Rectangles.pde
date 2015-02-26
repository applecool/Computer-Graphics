void setup(){
 size(400,400);
 smooth();
}

void draw(){
  
 drawQuad(100,100,100,300,300,300,300,100);
}

float distance(float x1, float y1, float x2, float y2){
 return sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2));
}

void drawQuad(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4){
 if(distance(x1,y1,x2,y2)<1.5){
  return;
 }else{
   quad(x1,y1,x2,y2,x3,y3,x4,y4);
   drawQuad((x1+x2)/2,(y1+y2)/2,(x2+x3)/2,(y2+y3)/2,(x3+x4)/2,(y3+y4)/2,(x4+x1)/2,(y4+y1)/2);
 }

}

