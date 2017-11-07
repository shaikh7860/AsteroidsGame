class Stars //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Stars()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show()
  {
    stroke(255,255,0);
    fill(255,255,0);
    ellipse(myX, myY, 3, 3);
  }
}