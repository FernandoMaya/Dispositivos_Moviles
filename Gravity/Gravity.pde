PVector tierra, marte, jupiter;
PVector gravedad, gMarte, gJupiter;
PVector velocidad, vMarte, vJupiter;
float h2 = 0;
int contador = 0, diam = 10, cM = 0, cJ = 0;

void setup() {
  size(600,600);
  smooth();
  noStroke();
  tierra = new PVector(50,50);
  gravedad = new PVector(0, 0.98);
  velocidad = new PVector(0, 2.1);
  
  marte = new PVector(50,50);
  gMarte = new PVector(0, 0.37);
  vMarte = new PVector(0, 2.1);
  
  jupiter = new PVector(50,50);
  gJupiter = new PVector(0, 2.479);
  vJupiter = new PVector(0, 2.1);
}

void draw() {
  background(200);
  tierra.add(velocidad);
  velocidad.add(gravedad);
  textSize(20);
  fill(0, 0, 0);
  text("Tierra: " + contador, 50, 25);
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

  marte.add(velocidad);
  vMarte.add(gMarte);
  textSize(20);
  fill(0, 0, 0);
  text("Marte: " + cM, 175, 25);
  if (marte.y > ((height)-10)){
    vMarte.y = vMarte.y * -0.75;
    if(vMarte.y < -4.5) {
      cM = cM + 1;
      h2 = marte.x;
    } else {
      vMarte.y = 0;
      vMarte.x = 0;
    }
    marte.y = height-10;
  }
  
  jupiter.add(velocidad);
  vJupiter.add(gJupiter);
  textSize(20);
  fill(0, 0, 0);
  text("Jupiter: " + cJ, 300, 25);
  if (jupiter.y > ((height)-10)){
    vJupiter.y = vJupiter.y * -0.75;
    if(vJupiter.y < -4.5) {
      cJ = cJ + 1;
      h2 = jupiter.x;
    } else {
      vJupiter.y = 0;
      vJupiter.x = 0;
    }
    jupiter.y = height-10;
  }

  
  // ------------------------------------------------------------------------------
  //Pelota
  fill(0,0,255);
  ellipse(75, tierra.y, diam, diam);
  fill(255,0,0);
  ellipse(200, marte.y, diam, diam);
  fill(#804000);
  ellipse(350, jupiter.y, diam, diam);


}

void mousePressed(){
  draw();
}
