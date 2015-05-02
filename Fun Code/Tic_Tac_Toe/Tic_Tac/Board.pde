Tic_Tac_Toe game_Tic_Tac_Toe;

void setup()
{
  size(300, 300);
  game_Tic_Tac_Toe = new Tic_Tac_Toe();
}

void draw()
{
  background(48,214,151);
  stroke(0);
  strokeWeight(5);
  for (int i=0; i<3; i++)
  {
    line(width*i/3, 0, width*i/3, height);
    line(0, height*i/3, width, height*i/3);
  } 

  for (int i=0; i<3; i++)
    for (int j=0; j<3; j++)
    {
      stroke(0);

      if (game_Tic_Tac_Toe.map[i][j] == 1)
      {
        if (game_Tic_Tac_Toe.Game_Result > 0 && game_Tic_Tac_Toe.Color_map[i][j]==1)
          fill(255, 0, 0);
        else  
          fill(255);

        ellipseMode(CORNERS);
        ellipse(width*i/3, height*j/3, width*(i+1)/3, height*(j+1)/3);
      }

      if (game_Tic_Tac_Toe.map[i][j] ==-1)
      {

        if (game_Tic_Tac_Toe.Game_Result < 0 && game_Tic_Tac_Toe.Color_map[i][j]==-1)
          stroke(255, 0, 0);
        else  
          stroke(0);


        line(width*i/3, height*j/3, width*(i+1)/3, height*(j+1)/3); 
        line(width*i/3, height*(j+1)/3, width*(i+1)/3, height*j/3);
      }
    }
}

void mousePressed()
{
  if (mouseButton==RIGHT)
  {
    game_Tic_Tac_Toe.Reset();
    return;
  }

  if (mouseButton == LEFT)
  {
    if (game_Tic_Tac_Toe.Evaluate()!=0)
    {
      game_Tic_Tac_Toe.Reset();
      return;
    }

    int x = mouseX / (width/3); 
    int y = mouseY / (height/3);

    boolean player_input = game_Tic_Tac_Toe.PlayerInput(x, y);

    int result = game_Tic_Tac_Toe.Evaluate();

    if (result==0 && player_input==true)
    {
      game_Tic_Tac_Toe.AI();
      game_Tic_Tac_Toe.Evaluate();
    }
  }
}

