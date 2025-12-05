class Player{ 
<<<<<<< HEAD
  //PVectors for position, acceleration, and velocity
=======
>>>>>>> main
  PVector pos; 
  PVector vel;
  PVector acc;
  
  Player() { 
<<<<<<< HEAD
    //set values for players position, vel, and acc when the game starts
=======
>>>>>>> main
    vel= new PVector(0,0);
    pos= new PVector(130,200);
    acc= new PVector(0,0);
  }
  
  void update() { 
<<<<<<< HEAD
    //acceleration starts at 0
    acc.set(0,0);
    //if i press the key up or down, acceleration builds
=======
    acc.set(0,0);
    
>>>>>>> main
    if (keyPressed && keyCode == UP) { 
      acc.y=-0.2;
    }
    
    if (keyPressed && keyCode == DOWN) {
      acc.y=+0.2;
    }
<<<<<<< HEAD
    //velocity adds acceleration to give float effect, the maximum for the acc is 6
    //vel is added to the players position, allows floaty movement
    vel.add(acc);
    vel.limit(6);
    pos.add(vel);
    
    
      //make sure the player does not fall or fly off the screen
=======
    vel.add(acc);
    vel.limit(7);
    pos.add(vel);
    
>>>>>>> main
      if (pos.y > 400) {
      pos.y=400;
      vel.y=0;
    }
<<<<<<< HEAD
    
  
  
=======
    //makes sure that the bird doesnt fall off the screen
>>>>>>> main
    if (pos.y < 0) {
      pos.y=0;
      vel.y=0;
    }
  
    
    
  }

void display() { 
       stroke(0);
     fill(255,67,23);
  ellipse(pos.x,pos.y,30,30);
<<<<<<< HEAD
 //if the player dies, reset their position and movement
 if (gameOver==true) { 
     pos.set(130,200);
     acc.set(0,0);
     vel.set(0,0);
 }
  
=======
>>>>>>> main
}
}
