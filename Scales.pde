boolean shift = true;
int loopCount = 0;
int b = 20;
int g = 20;

void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  for(int i=-20;i<500;i+=10){
    loopCount+=1;
    b=b-7;
    g=g-7;
    for(int j=-100;j<500;j+=20){
      scale(i,j);
    }
  }
}
void scale(int x, int y){

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
      vertex(x+10,y);
      vertex(x+10,y+10);
      vertex(x+20,y+20);
      vertex(x+40,y+20);
      vertex(x+40,y+10);
      vertex(x+40,y);
      endShape();
      shift=false;
    }
    else{
      beginShape();
      vertex(x,y);
      vertex(x,y+10);
      vertex(x+10,y+20);
      vertex(x+30,y+20);
      vertex(x+30,y+10);
      vertex(x+30,y);
      endShape();      
      shift=true;
    }
}
