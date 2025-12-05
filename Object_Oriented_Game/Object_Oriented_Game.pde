<<<<<<< HEAD
  // player object to control
  Player p;
  //array list to store the clouds in the background
=======

 
>>>>>>> main
 ArrayList<Cloud> clouds;
 //list to store the obstacles
 ArrayList<Pipe> pipes; 
 //track when the game is over
 boolean gameOver=false;
 
 
void setup() { 
  size(400,400); 
  //initialize the player when the game begins
 p = new Player();
 //initialize the pipes and then add the first pipe when game begins
 pipes = new ArrayList<Pipe>();
 pipes.add(new Pipe());
    //add in the clouds, 10 of them for the background
    clouds = new ArrayList<Cloud>();
     for (int i = 0; i < 10; i++) {
    clouds.add(new Cloud());
  }
  
  
}


void draw() { 
  background(113,211,252); 
<<<<<<< HEAD
   //update and display everycloud
=======
     
>>>>>>> main
   for(Cloud c : clouds) {
     c.update();
     c.display();
   }
   //update and display all of the obstacles
   for ( Pipe pipe : pipes) {
   pipe.update();
   pipe.display();
      
 
   
}
   //add in player movement and display the player
   p.update();
   p.display();
 // if player died, show game over screen  
if (gameOver==true) {
  fill(222,22,222);
 ellipse(200,200,600,600);
   fill(0); 
  textAlign(CENTER, CENTER);
  textSize(40);
  text("YOU DIED", width/2, height/2);
  text("click to restart!", 200,300);
}
//click the mouse to turn off the screen
if (mousePressed) { 
  gameOver=false;
}


}
//seperate function to trigger the game over screen, i call it in the pipes section
void youDied() { 
  
  gameOver=true;
}


  

 
  
