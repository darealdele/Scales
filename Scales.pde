void setup() {
  size(500, 500);  //feel free to change the size
   //stops the draw() function from repeating
}
void draw() {
  size(500,500);
  int loopCount = 0;
  boolean shift = true;
  int b = 20;
  int g = 20;
  for(int i=-30;i<500;i+=10){
    loopCount+=1;
    b=b-7;
    g=g-7;
    for(int j=-100;j<500;j+=20){
      if(loopCount%2==0){
       fill(0,0,b); 
       b+=1;
      }
      else{
       fill(0,g,0);
       g+=1;
      }
      if(shift==true){
        beginShape();
        vertex(i+10,j);
        vertex(i+10,j+10);
        vertex(i+20,j+20);
        vertex(i+40,j+20);
        vertex(i+40,j+10);
        vertex(i+40,j);
        endShape();
        shift=false;
      }
      else{
        beginShape();
        vertex(i,j);
        vertex(i,j+10);
        vertex(i+10,j+20);
        vertex(i+30,j+20);
        vertex(i+30,j+10);
        vertex(i+30,j);
        endShape();      
        shift=true;
      }
      System.out.println("Shape made");
    }
  }
}
