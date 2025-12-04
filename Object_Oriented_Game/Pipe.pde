class Pipe { 
  //create floats and vectors for the pipes location and speed
  //created floats for the actual pipe including its top height, bottom height and width
  PVector pos; 
  PVector speed; 
  float gap=100;
  float top; 
  float bottom; 
  float pipeWidth=20; 
  
  
  
  Pipe() { 
    //PVector values for speed and position
    
    pos = new PVector (width,0); 
    speed = new PVector (-2.5,0);
    
    //random height for the top height
    top= random(50,20);
    
    //the bottom pipe fills the bottom of the screen based on the gap
    bottom = height - (top +gap);
    

 
  }
  

  void update() { 
    
    // add speed to the pipe so it moves across the screen
     pos.add(speed);
     
     //once the pipe goes off screen, it resets to a new position and gap
  if (pos.x < -pipeWidth) {
    gap=random(80,250);
    top=random(40,250);
    bottom=height-(top+gap);
    pos.x=500;
  }
      
  }
  
  void display() {
    fill(0);
    stroke(0);
    rect(pos.x,0,pipeWidth,top);
    rect(pos.x,height-bottom, pipeWidth, bottom);
    
         if ((p.pos.x+15> pos.x && p.pos.x - 15< pos.x+15) &&
         (p.pos.y-15<top || p.pos.y+15> height-bottom))
         {
     youDied();
   }
    
  }
}
