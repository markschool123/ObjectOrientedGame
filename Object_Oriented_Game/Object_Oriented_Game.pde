
 
 ArrayList<Cloud> clouds;
 
void setup() { 
  size(400,400); 

    
    clouds = new ArrayList<Cloud>();
     for (int i = 0; i < 10; i++) {
    clouds.add(new Cloud());
  }
}


void draw() { 
  background(113,211,252); 
  
  fill(255);
  ellipse(140,mouseY,30,30);
   
   for(Cloud c : clouds) {
     c.update();
     c.display();
   }
}

 
  
