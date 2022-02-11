public void setup(){
  size(800, 800); 
}
int mya = 400;
int myb = 400;
void mouseClicked(){
  if (mya<1000 && myb<1000){
    mya+=100;
    myb+=100;
  }else{
  mya=400;
  myb=400;
  }
}
public void draw() {
  background(255,255,224); 
  stroke(255);
  Fractal(400,400,mya,myb);
}

public void Fractal(int x, int y, int a, int b) {
  ellipse(x, y, a, b); 
  if(a > 60) {
    fill (255-(int)(Math.random()*150),200,255-(int)(Math.random()*150),200);
    Fractal(x-a/2, y, a/2, b/2); 
    Fractal(x+a/2, y, a/2, b/2); 
    Fractal(x, y-a/2, a/2, b/2); 
    Fractal(x, y+a/2, a/2, b/2); 
  }
}
