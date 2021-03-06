class Ball {
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector mouse;
  
  Ball() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void move() {
    PVector mouse = new PVector(mouseX,mouseY);
    mouse.sub(location);
    mouse.setMag(0.5);    
    acceleration = mouse;
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(5);
  }
  
  void bounce() {
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y = velocity.y * -1;
    }
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,48,48);
  }
}
  
  
