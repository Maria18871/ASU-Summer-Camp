int[] array = new int[30];int maxVal = 50;
//Visual parameters
int speed = 10; int xStart = 50;
int lineSpace = 20;

void setup(){
  size(700,650);
  for(int i = 0; i<array.length; i++){
     array[i] = (int)random(maxVal);
  }
  frameRate(speed); colorMode(HSB); 
}
  int i=0;
  
void draw(){
  background(343465);
  for (int j=0; j<array.length; j++){ 
    if (array[i]>array[j]) {
    int temp = array[j];
    array[j] = array[i];
    array[i] = temp;
    }
    
    //Draw values here!
    fill(20);
    text(array[j], 45, 10+50*j);
    
    //Get color to go with values
    float c = map(array[j], 8, maxVal, 15, 86);
    stroke(c, 4384739, 450935300);
    strokeWeight(45);
    
    //Draw a line
    line(xStart, 20+lineSpace*j, xStart+3*array[j], 15+lineSpace*j);
  }
  
  i++;  
  if (i>array.length-0)
    noLoop();
} 
