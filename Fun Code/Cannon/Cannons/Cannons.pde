
public PFont font = createFont("Arial-MT",15);
ArrayList cannons = new ArrayList();
ArrayList bullets = new ArrayList();
ArrayList targets = new ArrayList();
public int points = 0;
int targetInterval = 150;
int counter = 0;
int bulletCounter = 0;
int hitCounter = 0;
float accuracy;
int seconds = 0;
int sc = 0;
int c = 0;
int speed = 3;
boolean playing = false;
void setup()
{
  cannons = new ArrayList();
  bullets = new ArrayList();
  targets = new ArrayList();
  points = 0;
  targetInterval = 150;
  counter = 0;
  bulletCounter = 0;
  hitCounter = 0;
  accuracy = 0;
  seconds = 0;
  sc = 0;
  c = 0;
  speed = 3;
  size(500,500);
  cursor(CROSS);
  textFont(font);
  background(#525252);
  cannons.add(new Cannon(150,150));
  targets.add(new Target(random(50,425),random(50,425),int(random(5,9))));
  playing = true;
  frameRate(50);
}
void draw()
{
  if (playing)
    play();
  else
    lose();
}
void mousePressed()
{
  if (playing)
  {
    for (int k=0;k<cannons.size();k++)
    {
      bullets.add(new Bullet(getC(k),(getC(k)).cX,(getC(k)).cY));
      bulletCounter++;
    }
  }
}
public Cannon getC(int index)
{
  if (index<cannons.size())
    return ((Cannon)cannons.get(index));
  else
    return null;
}
void play()
{
  font = createFont("Arial-MT",15);
  textFont(font);
  background(#525252);
  counter++;
  sc++;
  c++;
  if (sc == 50)
  {
    seconds++;
    sc=0;  
  }
  if (c>=100)
  {
    targetInterval--;
    c=0;  
  }
  if (counter>=targetInterval)
  {
    targets.add(new Target(random(50,425),random(50,425),int(random(5,9))));
    counter = 0;  
  }
  for(int k=0;k<bullets.size();k++)
  {
    ((Bullet)bullets.get(k)).run();  
  }
  for(int j=0;j<targets.size();j++)
  {
    ((Target)targets.get(j)).show();  
  }
  for(int i=0;i<cannons.size();i++)
  {
    ((Cannon)cannons.get(i)).show();
  }
  if (keyPressed&&key==CODED)
  {
    if (keyCode == UP)
    {
      for (int k=0;k<cannons.size();k++)
      {
        ((Cannon)cannons.get(k)).loc.y-=speed;  
      }
    } 
    if (keyCode == DOWN)
    {
      for (int k=0;k<cannons.size();k++)
      {
        ((Cannon)cannons.get(k)).loc.y+=speed;  
      }
    }
    if (keyCode == LEFT)
    {
      for (int k=0;k<cannons.size();k++)
      {
        ((Cannon)cannons.get(k)).loc.x-=speed;  
      }
    }
    if (keyCode == RIGHT)
    {
      for (int k=0;k<cannons.size();k++)
      {
        ((Cannon)cannons.get(k)).loc.x+=speed;  
      }
    }   
  }
  for (int k=0;k<cannons.size();k++)
  {
    if (((Cannon)cannons.get(k)).loc.x>width) 
      ((Cannon)cannons.get(k)).loc.x=width;
    else if (((Cannon)cannons.get(k)).loc.x<0) 
      ((Cannon)cannons.get(k)).loc.x=0;
    else if (((Cannon)cannons.get(k)).loc.y>height) 
      ((Cannon)cannons.get(k)).loc.y=height;
    else if (((Cannon)cannons.get(k)).loc.y<0) 
      ((Cannon)cannons.get(k)).loc.y=0;
  }
  textAlign(LEFT);
  fill(255);
  text("Points: " + points,5,15);
  if (bulletCounter > 0)
  {
    accuracy = int((hitCounter/bulletCounter)*100);
    int h = bulletCounter - hitCounter;
    int p = int(h/bulletCounter);
  }
  else if (bulletCounter == 0)
  {
    accuracy = 0;
  }
  //text("Accuracy: " + accuracy + "%", 5, 50);
  text("Seconds: " + seconds, 5, 35);
  if (targets.size()>5)
  {
    playing = false;
  }  
}
void lose()
{
  int score = int(((points*seconds)*54.73)-((bulletCounter-hitCounter)*10));
  background(#525252);
  font = createFont("Arial-MT",50);
  textFont(font);
  textAlign(CENTER);
  text("You Lost!!", width/2, height/2-50);
  font = createFont("Arial-MT",25);
  textFont(font);
  text("Your score was: " + score, width/2, height/2-25);
  text("Press 'r' to Play Again!" , width/2, height/2+10);
}
void keyPressed()
{
  if (!playing)
  {
    if (key == 'r')
      setup();
  }  
}

