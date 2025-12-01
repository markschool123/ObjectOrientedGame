
  Player p;
  


 

 ArrayList<Cloud> clouds;
 
 boolean gameOver;
 
 
void setup() { 
  size(400,400); 
  
 p = new Player();

    
    clouds = new ArrayList<Cloud>();
     for (int i = 0; i < 10; i++) {
    clouds.add(new Cloud());
  }
}


void draw() { 
  background(113,211,252); 
   
   for(Cloud c : clouds) {
     c.update();
     c.display();
   }
   p.update();
   p.display();
   
}

 
  
