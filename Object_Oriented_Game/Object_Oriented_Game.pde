  Player p;
  
 ArrayList<Cloud> clouds;
 
 ArrayList<Pipe> pipes; 
 
 boolean gameOver=false;
 
 
void setup() { 
  size(400,400); 
  
 p = new Player();

 pipes = new ArrayList<Pipe>();
 pipes.add(new Pipe());
    
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
   
   for ( Pipe pipe : pipes) {
   pipe.update();
   pipe.display();
      
 
   
}

   p.update();
   p.display();
   



}

void youDied() { 
  fill(0); 
  textAlign(CENTER, CENTER);
  textSize(40);
  text("YOU DIED", width/2, height/2);
}


  

 
  
