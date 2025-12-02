  Player p;
  
 ArrayList<Cloud> clouds;
 
 ArrayList<Pipe> pipes; 
 
 boolean gameOver=false;
 
 
void setup() { 
  size(400,400); 
  
 p = new Player();

 pipes = new ArrayList<Pipe>();
    
    clouds = new ArrayList<Cloud>();
     for (int i = 0; i < 10; i++) {
    clouds.add(new Cloud());
  }
  
      pipes = new ArrayList<Pipe>();
     for (int i = 0; i < 2; i++) {
    pipes.add(new Pipe());
  }
  
}


void draw() { 
  background(113,211,252); 
   
   for(Cloud c : clouds) {
     c.update();
     c.display();
   }
   
   for ( Pipe pipe : pipes) {
   pipe.update();
   pipe.display();
}
   
   p.update();
   p.display();

}

 
  
