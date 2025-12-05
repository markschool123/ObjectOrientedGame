class Pipe { 
  
  //pipes position and movement speed
  PVector pos; 
  PVector speed; 
  //the gap the player must fly through(between the top and bottom pipe)
  float gap=100;
  //height of top and bottom pipe
  float top; 
  float bottom; 
  //the width of the pipe
  float pipeWidth=20; 
  
  
  
  Pipe() { 
    
    
    //start the pipe at the ride side
    pos = new PVector (width,0); 
    //pipe wipes across the left
    speed = new PVector (-4.5,0);
    
    //random height for the top height
    top= random(50,20);
    
    //the bottom pipe fills the bottom of the screen based on the gap
    bottom = height - (top +gap);
    

 
  }
  

  void update() { 
    
    // add speed to the pipe so it moves across the screen
     pos.add(speed);
     
     //once the pipe goes off screen, it resets to a new position and gap
     //this helps the variety of pipe size and makes gameplay not repetitive
  if (pos.x < -pipeWidth) {
    gap=random(80,150);
    top=random(40,250);
    bottom=height-(top+gap);
    //move the pipe back to the right
    pos.x=500;
  }
      
  }
  
  void display() {
    //draw the top and bottom pipe
    fill(0);
    stroke(0);
    rect(pos.x,0,pipeWidth,top);
    rect(pos.x,height-bottom, pipeWidth, bottom);
      //checks if the player touches the pipes based on the radius of the player
         if ((p.pos.x+15> pos.x && p.pos.x - 15< pos.x+15) &&
         (p.pos.y-15<top || p.pos.y+15> height-bottom))
         {
       //if player touches pipe, game over screen plays
     youDied();
     
     //move the pipe off the screen
     //set further back to give player time to react
     if (gameOver==true) {
       pos.set(700,0);;
     }
     
   }
    
  }
}
