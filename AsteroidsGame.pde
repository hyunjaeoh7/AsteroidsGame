Spaceship hi = new Spaceship();//declare objects and object list
Star[] sleep = new Star[47];
ArrayList <Asteroids> balls = new ArrayList<Asteroids>();
ArrayList <Bullet> pew = new ArrayList<Bullet>();
boolean wf = false;//booleans to make the moving more smooth 
boolean sf = false;
boolean af = false;
boolean df = false;

public void setup() 
{
  size(500, 500);
  frameRate(25);
  for(int i = 0; i < sleep.length; i++){//creates 47 stars
    sleep[i] = new Star();
    sleep[i].show();
  }
  for(int i = 0; i < 47; i++){
    balls.add(new Asteroids());
    balls.get(i).show();
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i < sleep.length; i++){//draws 47 stars
    sleep[i].show();
  }
  
  for(int i = 0; i < balls.size(); i++){
    balls.get(i).show();
    balls.get(i).move();
    if(balls.get(i).check() == true){
      balls.remove(i);
    }
  }
  
  for(int i = 0; i < pew.size(); i++){
    pew.get(i).show();
    pew.get(i).move();
  }
  
  if(wf ^ sf){//if only one of the w or s keys are pressed then u accelerate
    if(wf){
      hi.accelerate(0.47474747474747);
    } else {
      hi.accelerate(-0.47474747474747);
    }
  }
  
  if(af ^ df){//if only one of the a or d keys are pressed then u turn
    if(af){
      hi.turn(-10);
    } else {
      hi.turn(10);
    }
  }
  
  hi.move();//moves spaceship
  hi.show();//draws spaceship
}

public void keyPressed(){//sets the booleans equal to true if the keys are pressed
  if(key == ' '){
    hi.hyperspace();
  }
  if(key == 'w'){
    wf = true;
  }
  
  if(key == 's'){
    sf = true;
  }
  
  if(key == 'a'){
    af = true;
  }
  
  if(key == 'd'){
    df = true;
  }
  
}

public void keyReleased(){//sets the booleans to false if they are released
  if(key == 'w'){
    wf = false;
  }
  
  if(key == 's'){
    sf = false;
  }
  
  if(key == 'a'){
    af = false;
  }
  
  if(key == 'd'){
    df = false;
  }
}

public void mousePressed(){//shooting thing
  if(mousePressed){
    pew.add(new Bullet(hi));
  }  
}
