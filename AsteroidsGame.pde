 //your variable declarations here
 Spaceship ship = new Spaceship();
public void setup() 
{
  //your code here
  size(500,500);
}
public void draw() 
{
  //your code here
  background(0);
  ship.show();
  ship.move();
  //loop
}
public void keyPressed()
{
 if(key == 's')
 {
  ship.accelerate(.5);//accelerates
 }
 if(key == 'w')//hyperspace
 {
  ship.setDirectionX(0);
  ship.setDirectionY(0);
  ship.setPointDirection((int)(Math.random()*500));
  ship.setX((int)(Math.random()*500));
  ship.setY((int)(Math.random()*500));
  
 }
 if(key == 'd')
 {
  ship.turn(15); //turns right
 }
 if(key == 'a')
 {
  ship.turn(-15);//turns left 
 }
}