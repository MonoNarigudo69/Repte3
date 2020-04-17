Mosca test;
Serp test2;
int c = 0;
int n = 10;
Cangur vector[] = new Cangur[15];
void setup(){
size(1000,1000);
test = new Mosca();
test2 = new Serp();

c = 50;
n = 0;
}


void draw(){
  c++;
  background(1);
  test.display();
  test.step();
  
  test2.display();
  test2.step();
  
  
   if(c >= 50){
      vector[n] = new Cangur(100, 900);
      
      
      c = 0;
    }
    
    abansarfixa();

  
}

void abansarfixa(){
  vector
  n++;
}



class Mosca {
  float x,y;
 
  float tx,ty;
 
  Mosca() {
    tx = 0;
    ty = 10000;
  }
 
  void step() {

    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);

    tx += 0.01;
    ty += 0.01;

  }
  
  void display(){
    ellipse(x,y,30,30);
    fill(0,255,0);
  }
}


class Serp {
  PVector location;
  PVector speed;
  int c = 0;
  Serp() {
    speed = new PVector(2,2);
    location = new PVector(500,500);
  }
 
  void step() {
  if (c == 50){
    speed.y -= -1;
  }  
  else if (c == 51){
    speed.y *= -1;
    c = 0;
  }
  
  location.add(speed);
  c++;
  }
  
  void display(){
    ellipse(location.x,location.y,30,30);
    fill(0,255,0);
  }
}


class Cangur {
  PVector location;
  PVector speed;
  float accel = -0.1;
  Cangur(int x, int y) {
    speed = new PVector(2,0);
    location = new PVector(x,y);
  }
 
  void step() {
  if (speed.y <= -4) {
    accel *= -1;
  }
  
  if (speed.y > 4) {
    accel *= -1;
  }
  speed.add(0,accel);
  
  
  location.add(speed);
  
  }
  
  void display(){
    ellipse(location.x,location.y,30,30);
    
    fill(0,255,0);
  }
}
