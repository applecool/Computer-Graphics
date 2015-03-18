void setup(){
 size(400,400);
}

void draw(){
 background(255,0,0);
 rectMode(CENTER);
 carpet(width/2, height/2, width/3.0);

}

void carpet(float x, float y, float s){
   if(s<4)
     return;
   else{
    rect(x,y,s,s);
    carpet(x-s, y-s, s/3);
    carpet(x-s, y, s/3);
    carpet(x-s, y+s, s/3);
    carpet(x,y-s, s/3);
    carpet(x, y+s, s/3);
    carpet(x+s, y-s, s/3);
    carpet(x+s, y, s/3);
    carpet(x+s, y+s, s/3);
   }  
 
}
