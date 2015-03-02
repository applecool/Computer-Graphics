void setup()
{
  size(300,300);
}

void draw()
{
  background(255);
  fill(0);
  
  for(int i=0; i<300; i+=150)
    for(int j=-75; j<300; j+=75)
    {
       if( (j/75)%2 ==0)
         quad(i+25, j, i+50, j+50, i+25, j+100, i, j+50);
       else
         quad(i+100, j, i+125, j+50, i+100, j+100, i+75, j+50);
    }
    
    
   for(int i=0; i<450; i+=150)
    for(int j=0; j<300; j+=75)
    {
       if( (j/75)%2 ==0)
         quad(i+100, j+25, i+150, j+50, i+100, j+75, i+50, j+50);
       else
         quad(i+25, j+25, i+75, j+50, i+25, j+75, i-25, j+50);
    }
}
