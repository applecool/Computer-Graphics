void setup()
{
  noLoop();
}

void draw()
{
  HanoiTower(3, 'A', 'B', 'C');
}

void HanoiTower(int topN, char from, char inter, char to)
{
   if(topN==1)
   {
     println("Disk 1 from " + from + " to " + to); 
   }else
   {
      HanoiTower(topN-1, from, to, inter);
      println("Disk " + topN + " from " + from + " to " + to); 
      HanoiTower(topN-1, inter, from, to);
   }
}
