class Pipe { 
  
  PVector pos; 
  PVector speed; 
  float gap=100;
  float top; 
  float bottom; 
  float pipeWidth=20; 
  
  
  
  Pipe() { 
    
    pos = new PVector (width,0); 
    speed = new PVector (-2.5,0);
    
    
    top= random(50,20);
    
    bottom = height - (top +gap);
  }
  
  void update() { 
    pos.add(speed);
     if (pos.x>width+100) {
      pos.x = 0;
      pos.y = 0;
      
    }
  }
  
  void display() {
    fill(0);
    stroke(0);
    rect(pos.x,0,pipeWidth,top);
    rect(pos.x,height-bottom, pipeWidth, bottom);
  }
}
