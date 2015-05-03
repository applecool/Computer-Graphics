class Target
{
  public float x;
  public float y;
  private int lives;
  public Target(float X, float Y, int LIVES)
  {
    x = X;
    y = Y;
    this.lives = LIVES;
  }
  public void show()
  {
    noStroke();
    fill(255);
    rect(x,y,75,75);
    fill(255,0,0);
    ellipse(x+37.5,y+37.5,75,75);
    fill(255);
    ellipse(x+37.5,y+37.5,60,60);
    fill(255,0,0);
    ellipse(x+37.5,y+37.5,45,45);
    fill(255);
    ellipse(x+37.5,y+37.5,30,30);
    fill(0);
    textAlign(CENTER);
    text(lives,x+38,y+43);
    for (int i=0;i<bullets.size();i++)
    {
      PVector l = new PVector(((Bullet)bullets.get(i)).loc.x,((Bullet)bullets.get(i)).loc.y);
      if (l.x>=x&&l.x<=x+75&&l.y >=y&&l.y<=y+75)
      {
        lives--;
        hitCounter++;
        bullets.remove(((Bullet)bullets.get(i)));
        if (lives == 0)
        {
          targets.remove(this);
          points++;
        }  
      }  
    }
  }
}
