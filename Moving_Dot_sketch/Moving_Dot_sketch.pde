int w, h, x, y; 
ArrayList<myDot> dots;
int numDots = 300;
float x1, y1;
void setup(){
  dots = new ArrayList<myDot>(); 
   size(1000,1000);
  w = int (random(20,40)); 
  h = int (random (20, 40));
  x = int (random(1000,400)); 
  y = int (random (0,height));
  
  
  for(int i = 0; i<numDots; i++){
    myDot dot = new myDot(x, y, w, h);
    dots.add(dot);
  }
    size(1000,1000); 
    background(2343); 
    colorMode(HSB);
    w = 60; h= 70; x = 125; y= 200;
    x1=234; y1=787;
  }

void draw(){
  fill(180,500,160);
 // ellipse(x,y,w,h); x+=0.5; y+=0.2; 
  //ellipse(x1, y1, w, h); x1+=0.5; y1+=0.2;
  for(myDot d: dots) d.draw();
}
