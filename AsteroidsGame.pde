//your variable declarations here
Spaceship ship = new Spaceship();
Stars[] space = new Stars[200];
Asteroid add = new Asteroid();

public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < space.length; i++)
  {
    space[i] = new Stars();
  }
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i<space.length; i++)
  {
    space[i].show();
  }
  ship.show();
  ship.move();
  add.show();
  add.move();
  
  //loop
}
public void keyPressed()
{
  if (key == 's')
  {
    ship.accelerate(.5);//accelerates
  }
  if (key == 'w')//hyperspace
  {
    ship.setDirectionX(0);
    ship.setDirectionY(0);
    ship.setPointDirection((int)(Math.random()*500));
    ship.setX((int)(Math.random()*500));
    ship.setY((int)(Math.random()*500));
  }
  if (key == 'd')
  {
    ship.turn(15); //turns right
  }
  if (key == 'a')
  {
    ship.turn(-15);//turns left
  }
}