class Player{ 
  PVector pos; 
  PVector vel;
  PVector acc;
  
  Player() { 
    vel= new PVector(0,0);
    pos= new PVector(130,200);
    acc= new PVector(0,0);
  }
  
  void update() { 
    acc.set(0,0);
    
    if (keyPressed && keyCode == UP) { 
      acc.y=-0.2;
    }
    
    if (keyPressed && keyCode == DOWN) {
      acc.y=+0.2;
    }
    vel.add(acc);
    vel.limit(6);
    pos.add(vel);
    
      if (pos.y > 400) {
      pos.y=400;
      vel.y=0;
    }
    //makes sure that the bird doesnt fall off the screen
  
  
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
