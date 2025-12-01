class Cloud { 
  float x,y;
  float speed;
  
  Cloud() { 
    x=random(-200,width);
    y=random(30,250);
    speed=random(1,2.5);
  }
  
  void update() { 
    x+=speed;
    if (x>width+100) {
      x = random(-300, -100);
      y = random(30, 250);
      speed = random(1, 2.5);
    }
  }
  
  
  void display() {
    drawCloud(x,y);
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
