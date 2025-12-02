class Cloud { 

  
  PVector pos; 
  PVector speed;
  Cloud() { 
    pos = new PVector(random(-300, -50), random(30, 250));
    speed = new PVector(random(1, 2.5), 0);
  }
  
  void update() { 
    
    pos.add(speed);


    
    if (pos.x>width+100) {
      pos.x = random(-300, -100);
      pos.y = random(30, 250);
      speed.x = random(1, 2.5);
    }
  }
  
  
  void display() {
    drawCloud(pos.x,pos.y);
  }
}
  
  
  
  
  void drawCloud(float x, float y) {
    fill(255);
  stroke(0);
  ellipse(x+70,y+30,30,30);
  
  fill(255);
  stroke(0);
  ellipse(x+90,y+20,30,30);
  
  fill(255);
  stroke(0);
  ellipse(x+70,y+10,30,30);
  
  fill(255);
  stroke(0);
  ellipse(x+50,y+20,30,30);
  
  fill(255);
  noStroke();
  ellipse(x+70,y+20,60,30);
  
  
  }
