class Tic_Tac_Toe {

  int [][] map;
  int [][] Color_map;
  int Game_Result;

  Tic_Tac_Toe()
  {
    map = new int [3][3];
    Color_map = new int [3][3];

    for (int i=0; i<3; i++)
      for (int j=0; j<3; j++)
      {
        map[i][j] = 0;
        Color_map[i][j] = 0;
      }

    Game_Result = 0;
  }

  boolean PlayerInput(int x, int y)
  {
    if (map[x][y] == 0)
    {
      map[x][y] = 1;

      return true;
    }
    else
      return false;
  }

  void AI()
  {
    int x, y;

    x = int(random(3))%3;
    y = int(random(3))%3;

    int Count = 0;

    for (int i=0; i<3; i++)
      for (int j=0; j<3; j++)
      {
        if ( map[i][j] != 0)
          Count++;
      }

    if (Count ==9)
      return;

    while (map[x][y] !=0)
    {
      x = int(random(3))%3;
      y = int(random(3))%3;
    }
    map[x][y] = -1;
  }

  int Evaluate()
  {
    Game_Result = 0;

    //Diagonal Lines
    if (map[0][0]==1 && map[1][1]==1 & map[2][2]==1 )
    {
      Game_Result = 1;
      Color_map[0][0] = 1;
      Color_map[1][1] = 1;
      Color_map[2][2] = 1;
    }

    if (map[0][2]==1 && map[1][1]==1 && map[2][0] == 1)
    {
      Game_Result = 2;
      Color_map[0][2] = 1;
      Color_map[1][1] = 1;
      Color_map[2][0] = 1;
    }

    //Horizontal Lines
    if (map[0][0] ==1 && map[1][0] ==1 && map[2][0] ==1)
    {
      Game_Result = 3;
      Color_map[0][0] = 1;
      Color_map[1][0] = 1;
      Color_map[2][0] = 1;
    }

    if (map[0][1] ==1 && map[1][1] ==1 && map[2][1] ==1)
    {
      Game_Result = 4;
      Color_map[0][1] = 1;
      Color_map[1][1] = 1;
      Color_map[2][1] = 1;
    }   

    if (map[0][2] ==1 && map[1][2] ==1 && map[2][2] ==1)
    {
      Game_Result = 5;
      Color_map[0][2] = 1;
      Color_map[1][2] = 1;
      Color_map[2][2] = 1;
    }   

    //Vertical Lines
    if (map[0][0] ==1 && map[0][1] ==1 && map[0][2] ==1)
    {
      Game_Result = 6;
      Color_map[0][0] = 1;
      Color_map[0][1] = 1;
      Color_map[0][2] = 1;
    }

    if (map[1][0] ==1 && map[1][1] ==1 && map[1][2] ==1)
    {
      Game_Result = 7;
      Color_map[1][0] = 1;
      Color_map[1][1] = 1;
      Color_map[1][2] = 1;
    }   

    if (map[2][0] ==1 && map[2][1] ==1 && map[2][2] ==1)
    {
      Game_Result = 8;
      Color_map[2][0] = 1;
      Color_map[2][1] = 1;
      Color_map[2][2] = 1;
    }  

    //Diagonal Lines
    if (map[0][0]==-1 && map[1][1]==-1 & map[2][2]==-1 )
    {
      Game_Result = -1;
      Color_map[0][0] = -1;
      Color_map[1][1] = -1;
      Color_map[2][2] = -1;
    }

    if (map[0][2]==-1 && map[1][1]==-1 && map[2][0] == -1)
    {
      Game_Result = -2;
      Color_map[0][2] = -1;
      Color_map[1][1] = -1;
      Color_map[2][0] = -1;
    }

    //Horizontal Lines
    if (map[0][0] ==-1 && map[1][0] ==-1 && map[2][0] ==-1)
    {
      Game_Result = -3;
      Color_map[0][0] = -1;
      Color_map[1][0] = -1;
      Color_map[2][0] = -1;
    }

    if (map[0][1] ==-1 && map[1][1] ==-1 && map[2][1] ==-1)
    {
      Game_Result = -4;
      Color_map[0][1] = -1;
      Color_map[1][1] = -1;
      Color_map[2][1] = -1;
    }   

    if (map[0][2] ==-1 && map[1][2] ==-1 && map[2][2] ==-1)
    {
      Game_Result = -5;
      Color_map[0][2] = -1;
      Color_map[1][2] = -1;
      Color_map[2][2] = -1;
    }   

    //Vertical Lines
    if (map[0][0] ==-1 && map[0][1] ==-1 && map[0][2] ==-1)
    {
      Game_Result = -6;
      Color_map[0][0] = -1;
      Color_map[0][1] = -1;
      Color_map[0][2] = -1;
    }

    if (map[1][0] ==-1 && map[1][1] ==-1 && map[1][2] ==-1)
    {
      Game_Result = -7;
      Color_map[1][0] = -1;
      Color_map[1][1] = -1;
      Color_map[1][2] = -1;
    }   

    if (map[2][0] ==-1 && map[2][1] ==-1 && map[2][2] ==-1)
    {
      Game_Result = -8;
      Color_map[2][0] = -1;
      Color_map[2][1] = -1;
      Color_map[2][2] = -1;
    }  

    return Game_Result;
  }

  void Reset()
  {
    for (int i=0; i<3; i++)
      for (int j=0; j<3; j++)
      {
        map[i][j] = 0;
        Color_map[i][j] = 0;
      }

    Game_Result = 0;
  }
}

