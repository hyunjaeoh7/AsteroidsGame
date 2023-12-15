class Spaceship extends Floater  
{   
    public Spaceship(){ //constructor, initializes member variables
      corners = 3;
      xCorners = new int[]{-30,40,-30};
      yCorners = new int[]{30,0,-30};   
      myColor = 147;   
      myCenterX = 50;
      myCenterY = 50;  
      myXspeed = 0;
      myYspeed = 0; 
      myPointDirection = 0;
    }
    
    public void hyperspace(){//makes ur ship go into hyperspace
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random()*400) + 50;
      myCenterY = (int)(Math.random()*400) + 50;
      myPointDirection = (int)(Math.random()*360);
    }
}
