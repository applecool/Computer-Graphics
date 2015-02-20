int num_bands = 40;
int band_height;

void setup()
{
  size(400,400);
  band_height = height/num_bands;
  smooth();
}

void draw()
{
  background (255);
  noStroke();
  for(int i=0; i <num_bands; i++)
  {
    if(i%band_height==0 || i%band_height == band_height/2)
    {
    fill(11,64,117);
    }else if (i%band_height < band_height/2)
    {
    fill(138, 244, 138);
    }else
    {
      fill (250, 250, 200);
    }
    rect(0, i*band_height, width, (i+1)*band_height);
  }
}

