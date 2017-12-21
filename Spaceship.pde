class Spaceship extends Floater  
{   
  //your code here
  Spaceship()
  {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -10;
    yCorners[0] = -10;
    xCorners[1] = 20;
    yCorners[1] = 0;
    xCorners[2] = -10;
    yCorners[2] = 10;
    xCorners[3] = -3;
    yCorners[3] = 0;

    myColor= color(0, 0, 255);
    myCenterX = 250;
    myCenterY =  250;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
  }
  public void setX(int x)
  {
    myCenterX = x;
  }
  public int getX()
  {
    return (int) myCenterX ;
  }
  public void setY(int y)
  {
    myCenterY = y;
  }  
  public int getY()
  {
    return (int)myCenterY;
  }
  public void setDirectionX(double x)
  {
    myDirectionX = x;
  }
  public double getDirectionX()
  {
    return myDirectionX;
  }
  public void setDirectionY(double y)
  {
    myDirectionY =y;
  }
  public double getDirectionY()
  {
    return myDirectionY;
  }
  public void setPointDirection(int degrees)
  {
    myPointDirection = degrees;
  }
  public double getPointDirection()
  {
    return myPointDirection;
  }
}