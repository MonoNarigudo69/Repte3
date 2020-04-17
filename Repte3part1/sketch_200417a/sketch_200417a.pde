PVector location;
PVector velocity;
PVector dir;

void setup(){
    size(600,600);
    stroke(0);
    fill(255);
    location = new PVector(random(height), random(width));
    velocity = new PVector(1,0);
    dir = new PVector(mouseX , mouseY);
}
  
void draw(){
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
   
    ellipse(location.x, location.y, 16, 16);  

}




  


  
