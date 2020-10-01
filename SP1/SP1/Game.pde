import java.util.Random;

class Game
{
  //egenskaber
  private Random rnd;
  private int width;
  private int height;
  private int[][] board;
  private Keys keys;
  private int playerLife;
  private int playerLife2;
  private Dot player;
  private Dot player2;
  private Dot[] enemies;
  private Dot[] enemies2;
  private Dot[] food;
  private Dot[] food2;
  private boolean gameEnds;

  //constructor
  Game(int width, int height, int numberOfEnemies, int numberOfEnemies2, int numberOfFood, int numberOfFood2)
  {
    gameEnds = false;
    if (width < 10 || height < 10)
    {
      throw new IllegalArgumentException("Width and height must be at least 10");
    }
    if (numberOfEnemies < 0)
    {
      throw new IllegalArgumentException("Number of enemies must be positive");
    } 
    this.rnd = new Random();
    this.board = new int[width][height];
    this.width = width;
    this.height = height;
    keys = new Keys();
    player = new Dot(0, 0, width-1, height-1);
    player2 = new Dot(20, 0, width-1, height-1);
    enemies = new Dot[numberOfEnemies];
    enemies2 = new Dot[numberOfEnemies2];
    food = new Dot [numberOfFood];
    food2 = new Dot[numberOfFood2];
    for (int i = 0; i <numberOfFood; ++i) 
    {
      food[i] = new Dot(15, 10, width-1, height-1);
    }


    for (int i = 0; i <numberOfFood2; ++i) 
    {
      food2[i] = new Dot(20, 20, width-1, height-1);
    }


    for (int i = 0; i < numberOfEnemies2; ++i)
    {
      enemies2[i] = new Dot(width-1, height-1, width-1, height-1);
    }
    this.playerLife2 = 100;


    for (int i = 0; i < numberOfEnemies; ++i)
    {
      enemies[i] = new Dot(width-1, height-1, width-1, height-1);
    }
    this.playerLife = 100;
  }

  public int getWidth()
  {
    return width;
  }

  public int getHeight()
  {
    return height;
  }

  public int getPlayerLife()
  {
    return playerLife;
  }
  public int getPlayerLife2()
  {
    return playerLife2;
  }

  public void onKeyPressed(char ch) //player 1
  {
    keys.onKeyPressed(ch);
  }

  public void onKeyReleased(char ch) //player 1
  {
    keys.onKeyReleased(ch);
  }
  public void onKeyPressedPlayer2() //player 2
  {
    keys.onKeyPressedPlayer2();
  }
  public void onKeyReleasedPlayer2() //player 2
  {
    keys.onKeyReleasedPlayer2();
  }

  public void update()
  {
    if (gameEnds != true) {


      updatePlayer2();
      updatePlayer();
      updateEnemies();
      updateEnemies2();
      updateFood();
      updateFood2();
      checkForCollisions();
      checkForPlayer2Collisions();
      checkFoodCollisions();
      checkFoodCollisions2();
      clearBoard();
      populateBoard();
      checkPlayerLife();
    } else {
      background(255);
    }
  }



  public int[][] getBoard()
  {
    //ToDo: Defensive copy?
    return board;
  }

  private void clearBoard()
  {
    for (int y = 0; y < height; ++y)
    {
      for (int x = 0; x < width; ++x)
      {
        board[x][y]=0;
      }
    }
  }

  private void updatePlayer() //Gør at 'keys' ikke kan trykkes samtidigt
  {
    //Update player
    if (keys.wDown() && !keys.sDown())
    {
      player.moveUp();
    }
    if (keys.aDown() && !keys.dDown())
    {
      player.moveLeft();
    }
    if (keys.sDown() && !keys.wDown())
    {
      player.moveDown();
    }
    if (keys.dDown() && !keys.aDown())
    {
      player.moveRight();
    }
  }
  private void updatePlayer2() { //player 2
    if (keys.arrowUp() && !keys.arrowDown())
    {
      player2.moveUp();
    }
    if (keys.arrowLeft() && !keys.arrowRight())
    {
      player2.moveLeft();
    }
    if (keys.arrowDown() && !keys.arrowUp())
    {
      player2.moveDown();
    }
    if (keys.arrowRight() && !keys.arrowLeft())
    {
      player2.moveRight();
    }
  }

  private void updateEnemies() //enemies follows player
  {
    for (int i = 0; i < enemies.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player.getX() - enemies[i].getX();
        int dy = player.getY() - enemies[i].getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            enemies[i].moveRight();
          } else
          {
            //Player is to the left
            enemies[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          enemies[i].moveDown();
        } else
        {//Player is up;
          enemies[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies[i].moveDown();
        }
      }
    }
  }

  private void updateEnemies2() //enemies follows player
  {
    for (int i = 0; i < enemies2.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player2.getX() - enemies2[i].getX();
        int dy = player2.getY() - enemies2[i].getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            enemies2[i].moveRight();
          } else
          {
            //Player is to the left
            enemies2[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          enemies2[i].moveDown();
        } else
        {//Player is up;
          enemies2[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies2[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies2[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies2[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies2[i].moveDown();
        }
      }
    }
  }

  private void updateFood() //food moves away from player
  {
    for (int i = 0; i < food.length; ++i)
    {

      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player.getX() - food[i].getX();
        int dy = player.getY() - food[i].getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            food[i].moveLeft();
          } else
          {
            //Player is to the left
            food[i].moveRight();
          }
        } else if (dy > 0)
        {
          //Player is down;
          food[i].moveUp();
        } else
        {//Player is up;
          food[i].moveDown();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          food[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          food[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          food[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          food[i].moveDown();
        }
      }
    }
  }

  private void updateFood2() //food moves away from player 2
  {
    for (int i = 0; i < food.length; ++i)
    {

      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player2.getX() - food2[i].getX();
        int dy = player2.getY() - food2[i].getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            food2[i].moveLeft();
          } else
          {
            //Player is to the left
            food2[i].moveRight();
          }
        } else if (dy > 0)
        {
          //Player is down;
          food2[i].moveUp();
        } else
        {//Player is up;
          food2[i].moveDown();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          food2[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          food2[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          food2[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          food2[i].moveDown();
        }
      }
    }
  }


  private void populateBoard() //putting players/enemies/food on the board
  {
    //Insert player
    board[player.getX()][player.getY()] = 1;
    board[player2.getX()][player2.getY()] = 4;
    //Insert food
    for (int i = 0; i < food.length; i++) {
      board[food[i].getX()][food[i].getY()] = 3;
    }
    for (int i = 0; i < food2.length; i++) {
      board[food2[i].getX()][food2[i].getY()] = 3;
    }
    //Insert enemies
    for (int i = 0; i < enemies.length; ++i)
    {
      board[enemies[i].getX()][enemies[i].getY()] = 2;
    }
    for (int i = 0; i < enemies.length; ++i)
    {
      board[enemies2[i].getX()][enemies2[i].getY()] = 2;
    }
  }

  private void checkForCollisions() //checking for collision for player 1
  {
    //Check enemy collisions
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies[i].getX() == player.getX() && enemies[i].getY() == player.getY())  
      {
        //We have a collision
        --playerLife;
      }
    }
  }

  private void checkForPlayer2Collisions()  //checking collision for player 2
  {
    //Check enemy collisions
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies2[i].getX() == player2.getX() && enemies2[i].getY() == player2.getY())  
      {
        //We have a collision
        --playerLife2;
      }
    }
  }




  private void checkFoodCollisions() //food collites with player
  {
    //Check enemy collisions
    for (int i = 0; i < food.length; ++i)
    {
      if (playerLife < 100 && food[i].getX() == player.getX() && food[i].getY() == player.getY())  
      {
        //We have a collision
        ++playerLife;
        changeFoodPosition(food[i]);
      }
    }
  }
  private void checkFoodCollisions2() //food collites with player
  {
    //Check enemy collisions
    for (int i = 0; i < food.length; ++i)
    {
      if (playerLife2 < 100 && food2[i].getX() == player2.getX() && food2[i].getY() == player2.getY())  
      {
        //We have a collision
        ++playerLife2;
        changeFoodPosition(food2[i]);
      }
    }
  }

  private void checkPlayerLife() // checking the players life
  {
    for (int i = 0; i < 1; i++) { 
      //we have a collision
      if (playerLife <= 0) {
        gameEnds = true;
      }
      if (playerLife2 <=0) {
        gameEnds = true;
      }
    }
  }
  private void changeFoodPosition (Dot food) { //changes the position of food
    float newX = random(0, 24);
    float newY = random(0, 24);

    food.x = (int) newX;
    food.y = (int) newY;
  }
}
