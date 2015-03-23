int num_Ball = 100;
float [][] centerBall;
float [] radiusBall;
int [][] colorBall;
float [][] speedBall;

void setup()
{
  size(400,400);
  
  centerBall = new float [num_Ball][2];
  radiusBall = new float [num_Ball];
  colorBall = new int [num_Ball][3];
  speedBall = new float [num_Ball][2];
  
  for(int i=0; i<num_Ball; i++)
  {
    centerBall[i][0] = random(400);
    centerBall[i][1] = random(400);
    
    radiusBall[i] = 10 + random(10);
    
    colorBall[i][0] = int(random(255));
    colorBall[i][1] = int(random(255));
    colorBall[i][2] = int(random(255));
    
    speedBall[i][0] = 2-random(4);
    speedBall[i][1] = 2-random(4);
  }
  
}

void draw()
{
  background(128);
  
  for(int i=0; i<num_Ball; i++)
  {
    //pushMatrix();
    //translate(speedBall[i][0], speedBall[i][1]);
    
    centerBall[i][0] = centerBall[i][0] +  speedBall[i][0];
    centerBall[i][1] = centerBall[i][1] +  speedBall[i][1];
    
    if(centerBall[i][0]>width || centerBall[i][0] < 0)
        speedBall[i][0] = -speedBall[i][0];
    
    if(centerBall[i][1]>height || centerBall[i][1] < 0)
        speedBall[i][1] = -speedBall[i][1];
    
    fill(colorBall[i][0], colorBall[i][1], colorBall[i][2]);
    ellipse(centerBall[i][0], centerBall[i][1], 2*radiusBall[i], 2*radiusBall[i]);
    //popMatrix();
  }
  
}



