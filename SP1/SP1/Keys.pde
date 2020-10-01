class Keys
{
  private boolean wDown = false;
  private boolean aDown = false;
  private boolean sDown = false;
  private boolean dDown = false;
  private boolean arrowUp = false;
  private boolean arrowDown = false;
  private boolean arrowLeft = false;
  private boolean arrowRight = false;


  public Keys() {
  }

  public boolean wDown()
  {
    return wDown;
  }

  public boolean aDown()
  {
    return aDown;
  }

  public boolean sDown()
  {
    return sDown;
  }

  public boolean dDown()
  {
    return dDown;
  }
  public boolean arrowDown()
  {
    return arrowDown;
  }
  public boolean arrowUp()
  {
    return arrowUp;
  }
  public boolean arrowLeft()
  {
    return arrowLeft;
  }
  public boolean arrowRight()
  {
    return arrowRight;
  }

  void onKeyPressed(char ch) //player 1
  {
    if (ch == 'W' || ch == 'w')
    {
      wDown = true;
    } else if (ch == 'A' || ch == 'a')
    {
      aDown = true;
    } else if (ch == 'S' || ch == 's')
    {
      sDown = true;
    } else if (ch == 'D' || ch == 'd')
    {
      dDown = true;
    }
  }

  void onKeyReleased(char ch) // player 1
  {
    if (ch == 'W' || ch == 'w')
    {
      wDown = false;
    } else if (ch == 'A' || ch == 'a')
    {
      aDown = false;
    } else if (ch == 'S' || ch == 's')
    {
      sDown = false;
    } else if (ch == 'D' || ch == 'd')
    {
      dDown = false;
    }
  }
  void onKeyPressedPlayer2() //player 2
  {
    if (key == CODED) {
      if (keyCode == LEFT) {
        arrowLeft = true;
      }
      if (keyCode == RIGHT) {
        arrowRight = true;
      }
      if (keyCode == UP) {
        arrowUp = true;
      }
      if (keyCode == DOWN) {
        arrowDown = true;
      }
    }
  }
  void onKeyReleasedPlayer2() //player 2
  {
    if (key == CODED) {
      if (keyCode == LEFT) {
        arrowLeft = false;
      }
      if (keyCode == RIGHT) {
        arrowRight = false;
      }
      if (keyCode == UP) {
        arrowUp = false;
      }
      if (keyCode == DOWN) {
        arrowDown = false;
      }
    }
  }
}
