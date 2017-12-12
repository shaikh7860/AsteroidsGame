//your variable declarations here
Spaceship ship = new Spaceship();
Stars[] space = new Stars[200];
//Asteroid[] add = new Asteroid[13];//Change to arrayist for step one
ArrayList<Asteroid> add = new ArrayList<Asteroid>();
public void setup() 
{
  //your code here
   
  size(500, 500);
  for (int i = 0; i < space.length; i++)
  {
    space[i] = new Stars();
  }
   for (int i = 0; i < 14; i++)
  {
    add.add(new Asteroid());
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
  for (int i = 0; i<add.size(); i++)
  {
    add.get(i).show();
    add.get(i).move();
    if(dist(ship.getX(), ship.getY(),add.get(i).getX(),add.get(i).getY())<20)
      add.remove(i);
  }
  ship.show();
  ship.move();
  //add.show();
  //add.move();
  System.out.println(add.size());
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