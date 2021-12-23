PImage barco;
PImage avion ;
PImage fondo;
PImage proyectil;
PImage proyectil2;
PImage explosion;
PImage Gameo;

Barco  barco1 = new Barco (width+10);
Avion avion1 = new Avion(-120);

void setup(){
  fullScreen();
  orientation(LANDSCAPE); 
  fondo = loadImage("fondo.jpg");
  barco = loadImage("barco.png");
  avion = loadImage("avion.png");
  proyectil = loadImage("proyectil.png");
  proyectil2 = loadImage("proyectil2.png");
  Gameo = loadImage("game_over.png");
  explosion = loadImage("explosion.png");
}

void draw(){  
  noStroke();
  image(fondo, 0, 0, width, height);
  avion1.update();
  barco1.update();
  
    if (avion1.proyectil_1.xu > barco1.xa && avion1.proyectil_1.xu < barco1.xa+180 && avion1.proyectil_1.yu > height/1.3 && avion1.proyectil_1.xu < (height/1.3)+ 140){
    image(explosion, avion1.proyectil_1.xu, avion1.proyectil_1.yu, 60, 60);
    barco1.life = 0;
  }
  
  if (barco1.proyectil_2.xa > avion1.xu && barco1.proyectil_2.xa < avion1.xu+120 && barco1.proyectil_2.ya > height/6 && barco1.proyectil_2.ya < (height/6)+160){
    image(explosion, barco1.proyectil_2.xa, barco1.proyectil_2.ya, 60, 60);
    avion1.life = 0;
  }
  
  if (barco1.life == 0 || avion1.life == 0){
    if(mousePressed){
      barco1.life = 1;
     avion1.life = 1;
     
     barco1.xa = -120;
     avion1.xu = width+10;
    }else{
      image(Gameo, width/3.5, height/3.5, width/2, height/2);
    } 
  }
  
}

class Avion{
float xu;
float yu = height/6;
Proyectil proyectil_1 = new Proyectil();
int life = 1;

Avion(float x){
    xu = x;
  }
  void update(){
    if(life == 1){
      xu -= 8;
      if(xu < -120) xu = width+10;
      image(avion, xu, height/6, 160, 160);
      
      if(mousePressed && mouseX > avion1.xu && mouseX < avion1.xu+160 && mouseY > height/6 && mouseY < (height/6)+160){
        proyectil_1.xu = xu +60 ;
        proyectil_1.yu = height/4;
        proyectil_1.g = 4.9;
      }else{  
      proyectil_1.update();
    }
  }
 }
}
class Barco {
  Proyectil2 proyectil_2 = new Proyectil2();
  float xa;
  int life = 1;

  
  Barco(float xb ){
    xa = xb;
    
  }
  void update(){
        if(life == 1){
      xa+=4;
      if(xa > width+5) xa = -180;
      image(barco, xa, height/1.5, 190, 140);   
if(mousePressed && mouseX > barco1.xa && mouseX < barco1.xa+190 && mouseY > height/1.5 && mouseY < (height/1.5)+140){
        proyectil_2.tiempoejec=0;
        proyectil_2.xc= xa+140;
        proyectil_2.yc= height/1.45 + 40;
      }else{   
      proyectil_2.update();
   }
  }
 }
}
class Proyectil{
  float xu = 0;
  float yu = 0;
  float g;
  Proyectil(){}
  
  Proyectil(float x, float y){
    xu = x;
    yu = y;
    image(proyectil, xu, yu, 15, 30);
  }   
  void update(){
    yu = yu + g;
    xu -=2 ;
    g = g + 1.00;
    image(proyectil, xu, yu, 15, 30);
  }
}

class Proyectil2{
  float tiempoejec = 0;
  float gravedad = 9.8;
  float xa;
  float xc;
  float ya;
  float yc;
  float angulo = 70;
  float vposicioni = 100;
  Proyectil2(){}
  
  void update(){
    xa = (xc) + (-angulo/2) + vposicioni * cos(radians(angulo))*tiempoejec;
    ya = (yc) - (vposicioni * sin(radians(angulo)) * tiempoejec - gravedad *pow(tiempoejec, 2)/2);
    tiempoejec += 0.25;
    image(proyectil2, xa, ya, 30, 30);
    
  }
}
