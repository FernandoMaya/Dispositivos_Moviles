PVector tierra;
PVector gravedad;
PVector velocidad;
float h2 = 0;
int contador = 0, diam = 10;
PImage bg, ball;

void setup() {
  size(600,400);
  smooth();
  noStroke();
  tierra = new PVector(50,50);
  gravedad = new PVector(0, 0.98);
  velocidad = new PVector(0, 2.1);
}

void draw() {
  background(200);
  tierra.add(velocidad);
  velocidad.add(gravedad);
  textSize(20);
  fill(0, 0, 0);
  text("Tierra: " + contador, 100, 25);
  if (tierra.y > ((height)-10)){
    velocidad.y = velocidad.y * -0.75;
    if(velocidad.y < -4.5) {
      contador = contador + 1;
      h2 = tierra.x;
    } else {
      velocidad.y = 0;
      velocidad.x = 0;
    }
    tierra.y = height-10;
  }

  
  // ------------------------------------------------------------------------------
  //Pelota
  ellipse(tierra.x, tierra.y, diam, diam);
}

void mousePressed(){
  draw();
}
