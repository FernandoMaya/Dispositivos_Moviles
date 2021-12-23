float x, x2;
float y, y2;
PImage barco;
PImage avion;

void setup(){
  fullScreen();
  noStroke();
  fill(0);
  //cargar imagen del barco
  barco = loadImage("barco.png");
  image(barco, 0, 0);
  barco.resize(0,250);
  image(barco, 0, 0);
  //cargar imagen del avion
  avion = loadImage("avion.png");
  image(avion, 0, 0);
  avion.resize(0,250);
  image(avion, 0, 0);
  frameRate(60);
  
  y = 300;
  x = width;
  y2 = 0;
  x2 = width;
  
  
}


void draw(){
  background(133, 193, 233);
  x = x + 2;
  image(barco, x , y);
  if (x > width){
    x = 0;
  }
  
  x2 = x2 - 2;
  image(avion, x2, y2);
  if (x2 < width-width-50){
    x2 = width;
  }
}
