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
    pos.add(acc);
    
  }

void display() { 
       stroke(0);
     fill(255,67,23);
  ellipse(pos.x,pos.y,30,30);
}
}
