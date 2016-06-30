void setup () { 
  size(600,600); 
}

void draw (){
 
  float precent = map(mouseX,0,width,0,1); // precent var changes from 0 - 1 with mouse movement, Do not understand all the numbers
  background(0); // adds a black background 
  translate(width/2,height/2); // centers the shape to the screen
  stroke(255); // white line
  strokeWeight(2); // line wright
  noFill();  //it has no fill
  
  beginShape(); 
  for (float a = 0 ; a < TWO_PI; a+= 0.1) { //do not understand
    
    float r1 = map(sin(a*7),-1,1,75,100); // Makes a sin wave. Can edit values but do not really understand what they do and why.
    float r2 = map(noise(a),0,3,50,400); // Creates a random noise  do not really understand the values very vell.
    
    float r = lerp(r1,r2,precent); //lerp - linear interpelation takes the avarage between two numbers and precent var is between 0-1
    
    float x = r*cos(a);
    float y = r*sin(a);
    vertex(x,y);  // makes streight lines between points
  }
  
  endShape(CLOSE);
}
