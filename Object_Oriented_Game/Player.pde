class Player{ 
  //PVectors for position, acceleratio, and velocity
  PVector pos; 
  PVector vel;
  PVector acc;
  
  Player() { 
    //set values for each PVector
    vel= new PVector(0,0);
    pos= new PVector(130,200);
    acc= new PVector(0,0);
  }
  
  void update() { 
    //acceleration starts at 0
    acc.set(0,0);
    //if i press the key up or down, acceleration is applied
    if (keyPressed && keyCode == UP) { 
      acc.y=-0.2;
    }
    
    if (keyPressed && keyCode == DOWN) {
      acc.y=+0.2;
    }
    //velocity adds acceleration to give float effect, the maximum for the acc is 6
    //vel is added to the players position
    vel.add(acc);
    vel.limit(6);
    pos.add(vel);
    
    
      //make sure the player does not fall or fly off the screen
      if (pos.y > 400) {
      pos.y=400;
      vel.y=0;
    }
    
  
  
    if (pos.y < 0) {
      pos.y=0;
      vel.y=0;
    }
  
    
    
  }

void display() { 
       stroke(0);
     fill(255,67,23);
  ellipse(pos.x,pos.y,30,30);
}
}
