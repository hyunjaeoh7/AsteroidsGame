class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = theShip.getDirect();
    myColor = color(47, 147, 247);
    corners = 5;
    xCorners = new int[]{5,2,-8,-8,2};
    yCorners = new int[]{0,3,3,-3,-3};
    accelerate(6);
  }
}
