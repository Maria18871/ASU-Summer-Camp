float x, y, wallLocation, velx;
int numDots = 300;
float x1, y1;

void setup (){
   x = 400; y = 400;
  velx=15;
size(900,900);
colorMode(HSB);
fill(68);
}
float c;

void draw(){
  if (c>=255) c=0;
  else c++;
  background(c,255,255);
ellipse(x, y, 70, 70);
  x+=velx;
  if(x>850) velx = velx*-1;
  if(x<0) velx = velx*-1;
  fill(180,500,160);
 // ellipse(x,y,w,h); x+=0.5; y+=0.2; 
  //ellipse(x1, y1, w, h); x1+=0.5; y1+=0.2;

}
