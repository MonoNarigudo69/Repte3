PVector speed;
PVector location;
PVector accel;
void setup(){
  
  size(600,600);
  speed = new PVector(random(-2,2), random(-2,2));
  location = new PVector(random(width), random(height));
  accel = new PVector(random(0,0.1), random(0,0.1));
}

void draw(){
  chechEdges();
  
  speed.add(accel);
  location.add(speed);
  
  background(1);
  ellipse(location.x, location.y, 16, 16);
   

  
}


void chechEdges(){
  if (location.x > width){
      location.x = 0;
  }
  if (location.x < 0){
      location.x = width;
  }
  if (location.y > height){
      location.y = 0;
  }
  if (location.y < 0){
      location.y = height;
  }
  
}
