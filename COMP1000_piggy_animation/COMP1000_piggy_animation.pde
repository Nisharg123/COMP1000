Pig h1 = new Pig(5, 100); 

 
void setup() 
{
  size(1200, 400);
  frameRate(30);
}

void draw() { 
  background(#71D3ED);
  h1.update();  
} 
 
class Pig { 
  float speed, size, xpos, ypos; 
  Pig (float s, float e) {  
    speed = s; 
    size = e;
    xpos = e/2;
    ypos = e/2;
  } 
  void update() { 
    xpos += speed; 
    if (xpos > width-(size/2)) { 
      xpos = size/2; 
    } 
    fill(#10FF00);
    circle(xpos, ypos, size); //face
    
    fill(255);
    circle(xpos-(size*0.18), ypos-(size*0.16), size*0.17); //eyes
    circle(xpos+(size*0.19), ypos-(size*0.16), size*0.20); 
    
    fill(#715E38);
    circle(xpos, ypos+(size*0.16), size*0.40); //mouth
    
    fill(255);
    circle(xpos, ypos+(size*0.17), size*0.13);
    circle(xpos-(size*0.1), ypos+(size*0.14), size*0.12);
    circle(xpos+(size*0.1), ypos+(size*0.14), size*0.12);
    
    fill(#72ED71);
    circle(xpos, ypos, size*0.30); //nose
    
    fill(0); //eye and nose eyebrow
    circle(xpos-(size*0.18), ypos-(size*0.16), size*0.05);
    circle(xpos+(size*0.19), ypos-(size*0.16), size*0.05);
    
    circle(xpos-(size*0.08), ypos-(size*0.01), size*0.08);
    circle(xpos+(size*0.08), ypos-(size*0.01), size*0.08);
    
   
    line(xpos-(size*0.3), ypos-(size*0.28), xpos-(size*0.1), ypos-(size*0.36));
    line(xpos+(size*0.3), ypos-(size*0.28), xpos+(size*0.1), ypos-(size*0.36));

    
    
    
  } 
} 
