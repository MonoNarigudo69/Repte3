int contador = 0;
bola vector[]  = new bola[60];
void setup(){
    size(1300,1300);
    stroke(0);
    fill(255);
    
    
    
    while(contador != 60){
     
      if (contador < 30){
       vector[contador] = new bola(40 * contador, 50);
      }
      else {
       vector[contador] = new bola(1200, contador * 20);
      }
      
      contador++;
    }
    
    contador = 0;
}
  
void draw(){
  contador = 0;
    for (bola n : vector) {
        n.actualitzarpos();
    }
}


class bola{
   
   PVector location;
   PVector velocity;
   PVector dir;
   
   bola(int x, int y){
    location = new PVector(x, y);
    velocity = new PVector(1,0);
    dir = new PVector(mouseX , mouseY);
    ellipse(location.x, location.y, 16 ,16);
   }
   
   
     void actualitzarpos(){
       dir.set(mouseX, mouseY);
    
      if(dir.x < location.x){
        velocity.x = -2;
      }
      else if(dir.x > location.x){
        velocity.x = 2;
      }  
      
      if(dir.y < location.y){
        velocity.y = -2;
      }
      else if(dir.y > location.y){
        velocity.y = 2;
      }
    
    location.add(velocity);
    ellipse(location.x, location.y, 16 ,16);
   
   }
   
   
}







  



  


  
