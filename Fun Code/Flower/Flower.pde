void setup(){
  size(400,400);
}

void draw(){
translate(200,200);
fill(255,255,0);
beginShape();
vertex(-30,-30);
bezierVertex(-150,-100,-150,100,-30,30);
bezierVertex(-100,150,100,150,30,30);
bezierVertex(150,100,150,-100,30,-30);
bezierVertex(100,-150,-100,-150,-30,-30);
endShape();
fill(255,255,255);
ellipse(0,0,50,50);

}
