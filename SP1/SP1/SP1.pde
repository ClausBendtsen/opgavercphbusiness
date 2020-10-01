//Claus SP1 1-10-2020


import java.util.Random;

Game game = new Game(25, 25, 4, 4, 3, 3);
PFont font;

public void settings() {
  size(1001, 1001);
}

void setup()
{
  frameRate(10);
  font = createFont("Arial", 16, true);
  textFont(font, 16);
}

void keyReleased()
{
  game.onKeyReleased(key);
  game.onKeyReleasedPlayer2();
}

void keyPressed()
{
  game.onKeyPressed(key);
  game.onKeyPressedPlayer2();
}

void draw()
{
  game.update();
  background(0); //Black
  drawGame();

  if (game.playerLife == 0 || game.playerLife2 == 0) {
    textFont(font, 40);
    if (game.playerLife2 == 0 && game.playerLife > 0) {
      text("PLAYER 1 WON", 350, height/2);
    }
    if (game.playerLife == 0 && game.playerLife2 > 0) {
      text("PLAYER 2 WON", 350, height/2);
    }
  }
}


void drawGame() {
  int[][] board = game.getBoard();
  if (game.gameEnds == false) {
    for (int y = 0; y < game.getHeight(); y++)
    {
      for (int x = 0; x < game.getWidth(); x++)
      {
        if (board[x][y] == 0)
        {
          fill(0, 0, 0);
        } else if (board[x][y] == 1)
        {
          fill(0, 0, 255);
        } else if (board[x][y] == 2)
        {
          fill(255, 0, 0);
        } else if (board[x][y] == 3)
        {
          fill(0, 255, 0);
        } else if (board[x][y] == 4)
        {
          fill(254, 255, 3);
        } else if (board[x][y] == 5)
        {
          fill(3, 255, 42);
        }
        stroke(100, 100, 100);
        rect(x*40, y*40, 40, 40);
      }
    }
    fill(255);
    text("Lifes player 1: "+game.getPlayerLife(), 25, 25);
    text("Lifes player 2; "+game.getPlayerLife2(), 25, 40);
  }
}
