class Bullet extends Floater
{

  public Bullet(Spaceship ship)
  {
   double dRadians =myPointDirection*(Math.PI/180);
    myCenterX = 250;
    myCenterY =  250;
    myDirectionX = 5 * Math.cos(dRadians) +0;
    myDirectionY = 5 * Math.sin(dRadians) +0;
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
    public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    

    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));

    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}