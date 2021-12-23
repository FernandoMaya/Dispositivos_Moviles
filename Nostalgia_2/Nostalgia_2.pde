
////Title
//PImage title;
//int xTitle, yTitle, hTitle, wTitle;
////background's
//PImage bgSpace;
//PImage bgEarth;
//PImage bgMoon;
//PImage bgMars;
//PImage bgMercury;
//PImage bgVenus;

////Planetas
//PImage optionSpace;
//PImage optionMoon;
//PImage optionEarth;
//PImage optionMars;
//PImage optionMercury;
//PImage optionVenus;

////Planets Dimensions
////Galaxy
//int xGalaxy, yGalaxy, hGalaxy, wGalaxy;
////Moon
//int xMoon, yMoon, hMoon, wMoon;
////Earth
//int xEarth, yEarth, hEarth, wEarth;
////Mars
//int xMars, yMars, hMars, wMars;
////Mercury
//int xMercury, yMercury, hMercury, wMercury;
////Venus
//int xVenus, yVenus, hVenus, wVenus;
////Game
//float inclination;
//int playOn;
//int playNow;
////Buttons
//int home;

//boolean [] keys = new boolean[128];
//boolean [] keysCode = new boolean[128];
//void setup(){
//  size(540,640); //Screen
//  orientation(LANDSCAPE);//Orientacion de la pantalla

//  //Background Atmosphere
//  playOn=0;
//  playNow=0;

//  bgSpace = loadImage("bgSpace.PNG"); //Background Space
//  bgMoon = loadImage("bgMoon.jpeg"); //Background Moon
//  bgEarth = loadImage("bgEarth.PNG"); //Background Earth
//  bgMars = loadImage("bgMars.PNG"); //Background Mars
//  bgMercury = loadImage("bgMercury.PNG"); //Background Mercury
//  bgVenus = loadImage("bgVenus.PNG"); //Background Venus
//  //Title
//  title = loadImage("txtTitle.png"); //Game´s title
//    xTitle=width/2; yTitle=560; wTitle=300; hTitle=80;
//  //Buttons
//  optionSpace = loadImage("btnSpace.png"); //Button Galaxy
//    xGalaxy=40; yGalaxy=40; wGalaxy=50; hGalaxy=50;
//  optionMoon = loadImage("btnMoon.png"); //Button Moon 
//    xMoon=80; yMoon=380; wMoon=100; hMoon=125;
//  optionEarth = loadImage("btnEarth.png"); //Button Earth
//    xEarth=270; yEarth=400; wEarth=200; hEarth=180;
//  optionMars = loadImage("btnMars.png"); //Button Mars
//    xMars=160; yMars=225; wMars=150; hMars=150;
//  optionMercury = loadImage("btnMercury.png"); //Button Mercury
//  xMercury=380; yMercury=225; wMercury=150; hMercury=150;
//    optionVenus = loadImage("btnVenus.png"); //Button Venus
//  xVenus=460; yVenus=380; wVenus=125; hVenus=135;
//  //Objects
//  nave = loadImage("nave.PNG");

//}

//void draw(){
//  //Background
//  imageMode(CORNERS);
//  switch(playOn){
//    case 0:
//      image(bgSpace, 0, 0, width, height);
//      break;
//    case 1:
//      image(bgEarth, 0, 0, width, height);
//      break;
//    case 2:
//      image(bgMoon, 0, 0, width, height);
//      break;
//    case 3:
//      image(bgMars, 0, 0, width, height);
//      break;
//    case 4:
//      image(bgMercury, 0, 0, width, height);
//      break;
//    case 5:
//      image(bgVenus, 0, 0, width, height);
//      break;
//  }
//  if(playNow==0){
//    //Buttons
//    imageMode(CENTER);
//    image(title,xTitle,yTitle,wTitle,hTitle);
//    image(optionMoon,xMoon,yMoon,wMoon,hMoon);
//    image(optionEarth,xEarth,yEarth,wEarth,hEarth);
//    image(optionMars,xMars,yMars,wMars,hMars);
//    image(optionMercury,xMercury,yMercury,wMercury,hMercury);
//    image(optionVenus,xVenus,yVenus,wVenus,hVenus);
//    imageMode(CENTER);
//    image(nave,101,101,34,70);
//  }else{
//    //Button Home
//    imageMode(CENTER);
//    image(optionSpace,xGalaxy,yGalaxy,wGalaxy,hGalaxy);
//  }

//}

//void mousePressed (){
//  if(playNow==0){
//    if((mouseX>xEarth-wEarth/2)&&(mouseX<xEarth+wEarth/2)&&(mouseY>yEarth-hEarth/2)&&(mouseY<yEarth+hEarth/2)){
//      playOn=1;
//      playNow=1;
//    }else if((mouseX>xMoon-wMoon/2)&&(mouseX<xMoon+wMoon/2)&&(mouseY>yMoon-hMoon/2)&&(mouseY<yMoon+hMoon/2)){
//      playOn=2;
//      playNow=1;
//    }else if((mouseX>xMars-wMars/2)&&(mouseX<xMars+wMars/2)&&(mouseY>yMars-hMars/2)&&(mouseY<yMars+hMars/2)){
//      playOn=3;
//      playNow=1;
//    }else if((mouseX>xMercury-wMercury/2)&&(mouseX<xMercury+wMercury/2)&&(mouseY>yMercury-hMercury/2)&&(mouseY<yMercury+hMercury/2)){
//      playOn=4;
//      playNow=1;
//    }else if((mouseX>xVenus-wVenus/2)&&(mouseX<xVenus+wVenus/2)&&(mouseY>yVenus-hVenus/2)&&(mouseY<yVenus+hVenus/2)){
//      playOn=5;
//      playNow=1;
//    }
//  }else{
//    if((mouseX>xGalaxy-wGalaxy/2)&&(mouseX<xGalaxy+wGalaxy/2)&&(mouseY>yGalaxy-hGalaxy/2)&&(mouseY<yGalaxy+hGalaxy/2)){
//      playOn=0;
//      playNow=0;
//    }
//  }
//}

PImage fin, enemigo, navej, bala;
Nave nve = new Nave();
ArrayList<Bala> balas = new ArrayList<Bala>();
ArrayList<Enemigo> enemigos = new ArrayList<Enemigo>();
ArrayList<Bomba> bombas = new ArrayList<Bomba>();
void setup() {
  fin = loadImage("fin.png");
  navej = loadImage("nave.PNG");
  enemigo = loadImage("enemigo.png");
  bala = loadImage("bala.png");
  imageMode(CENTER);
  size (500, 500);
  background(0);
  fill(255);
  stroke(255);
  for (int i=0; i<10; i++) {
    Enemigo  nvoEnemigo =new Enemigo(i*20+10);
    enemigos.add(nvoEnemigo);
  }
}

void draw() {
  background(0);
  nve.dibujar();
  nve.avanzar();
  for (Bala x : balas) {
    x.avanzar();
    x.dibujar();
  }
  for (Bomba x : bombas) {
    x.avanzar();
    x.dibujar();
  }
  for (Enemigo x : enemigos) {
    x.avanzar();
    x.dibujar();
  }
  ColisionBombaNave();
  colisionBalaEnemiga();
  ColisionBalaBomba();
    ColisionEnemigoNave();
  eliminarBalasPerdidas(); 
  eliminarBombasPerdidas();

}

void keyPressed() {
  nve.teclapretada(keyCode);
}

void keyReleased() {
  nve.teclasoltada(keyCode);
}
//--------------------------------------------------------------
void eliminarBalasPerdidas() {
  ArrayList<Bala> balasElim = new ArrayList<Bala>();
  for (Bala b : balas) {
    if (b.y <0) {
      balasElim.add(b);
    }
  }
  balas.removeAll(balasElim);
}

void eliminarBombasPerdidas() {
  ArrayList<Bomba> bombasElim = new ArrayList<Bomba>();
  for (Bomba b : bombas) {
    if (b.y >500) {
      bombasElim.add(b);
    }
  }
  bombas.removeAll(bombasElim);
}
void colisionBalaEnemiga() {
  ArrayList<Bala> balasElim = new ArrayList<Bala>();
  ArrayList<Enemigo> enemigosElim = new ArrayList<Enemigo>();
  for (Bala b : balas) {
    for (Enemigo e : enemigos) {
      float dist =sqrt(pow(b.x -e.x, 2) + pow(b.y -e.y, 2));
      if (dist <20) {
        balasElim.add(b);
        enemigosElim.add(e);
      }
    }
  }
  balas.removeAll(balasElim);
  enemigos.removeAll(enemigosElim);
}
void ColisionBalaBomba() {
  ArrayList<Bala> balasElim = new ArrayList<Bala>();
  ArrayList<Bomba> bombasElim = new ArrayList<Bomba>();
  for (Bala ba : balas) {
    for (Bomba bo : bombas) {
      float dist =sqrt(pow(bo.x -ba.x, 2) + pow(bo.y -ba.y, 2));
      if (dist<10) {
        balasElim.add(ba);
        bombasElim.add(bo);
      }
    }
  }
  balas.removeAll(balasElim);
  bombas.removeAll(bombasElim);
}
void ColisionBombaNave() {
  for (Bomba b : bombas) {
    float dist =sqrt(pow(b.x -nve.x, 2) + pow(b.y -nve.y, 2));
    if (dist<15) {
      println("hasta la vista ... BABY");
      for (int i=0; i<30; i++) {
        image(fin, 250, 250, width, height);
      }
      exit ();
    }
  }
}
void ColisionEnemigoNave() {
  for (Enemigo e : enemigos) {
    float dist =sqrt(pow(e.x -nve.x, 2) + pow(e.y -nve.y, 2));
    if (dist < 15) {
      println("hasta la vista ... BABY");
      for (int i=0; i<30; i++) {
        image(fin,250, 250, width, height);
      }
      exit ();
    }
  }
}
//--------------------------------------------------------------
class Nave {
  int x = 250, y = 400;
  boolean derecha = false;
  boolean izquierda = false;

  void dibujar() {
    image(navej,x,y,30,50);
    //ellipse(x, y, 10, 10);
  }

  void avanzar() {
    if (derecha) {
      x= x+3;
    }

    if (izquierda) {
      x= x-3;
    }
  }
  void teclapretada(int code) {
    if (code == 39) {
      derecha =true;
    }
    if (code == 37) {
      izquierda = true;
    }
    if (code == 32) {
      //Disparar
      Bala aux = new Bala(x, y); 
      balas.add(aux);
    }
  }
  void teclasoltada(int code) {
    if (code == 39) {
      derecha = false;
    }
    if (code == 37) {
      izquierda = false;
    }
  }
}

class Bala {
  int x = 0;
  int y=0 ;
  Bala(int px, int py) {
    x=px;
    y=py;
  }
  void dibujar() {
    image(bala,x,y,7,7);
    //ellipse(x, y, 5, 5);
  }
  void avanzar() {
    y= y - 4;
  }
}

class Bomba {
  int x = 0;
  int y=0 ;
  Bomba(int px, int py) {
    x=px;
    y=py;
  }
  void dibujar() {
    ellipse(x, y, 5, 5);
  }
  void avanzar() {
    y= y + 3;
  }
}

class Enemigo {
  int x = 250, y = 400;
  int oldy = 0;
  boolean derecha = true;
  boolean ataqPicada=false;
  Enemigo(int py) {
    y=py;
    x= int(random(10, 490));
    int coin =int(random(0, 10));
    if (coin<5) {
      derecha =true;
    } else {
      derecha =false;
    }
  }
  void dibujar() {
    image(enemigo,x,y,25,25);
  }
  void avanzar() {
    if (ataqPicada) {
      y=y+3;
      //perseguir nave
      if (nve.x > x) {
        x =x+2;
      } else {
        x =x-2;
      }
      //-----Regreso al inicio
      if (y>500) {
        y= 5;
      }
      if (y<oldy+3 && y >oldy -2) {
        ataqPicada=false;
      }
    } else {
      if (derecha) {
        x= x+2;
      } else {
        x= x-2;
      }
      if (x>490) {
        derecha = false;
      }
      if (x<10) {
        derecha =true;
      }
    }
    //------------------------------------------
    int moneda =int(random(0, 200));
    if (moneda == 5) {
      Bomba nvaBomba =new Bomba(x, y);
      bombas.add(nvaBomba);
    }
    //-------------------------------------------
    int coin = int(random(0, 800));
    if (coin ==5) {
      oldy = y;
      ataqPicada= true;
    }
    //-------------------------------------------
  }
}
