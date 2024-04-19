PImage escenario;
PImage nave;
PImage jugadorfrente;
PImage meteorito;

PImage derecha1;
PImage derecha2;
PImage izquierda1;
PImage izquierda2;

color colorear = color(255, 190, 124);

int posxnave= 0;
int direccionnave= 1;
int velocidadnave= 3;

int posxjugador= 0;
int velocidadjugador= 4;
int movimientojugador= 0;

int posymeteorito= 0;

boolean alternarImagen;

void setup(){
  size(720, 720);
  escenario= loadImage("escenario.png");
  escenario.resize(720, 720);
  jugadorfrente= loadImage("frente.png");
  jugadorfrente.resize(52, 64);
  nave= loadImage("nave.png");
  nave.resize(120, 67);
  derecha1= loadImage("der1.png");
  derecha1.resize(52, 64);
  derecha2= loadImage("der2.png");
  derecha2.resize(52, 64);
  izquierda1= loadImage("izq1.png");
  izquierda1.resize(52,64);
  izquierda2= loadImage("izq2.png");
  izquierda2.resize(52,64);
  meteorito= loadImage("meteorito.png");
  meteorito.resize(66,66);
}



void draw(){
  posxnave +=velocidadnave *direccionnave;
if(posxnave <= 0 || posxnave >= width - nave.width){
  direccionnave *= -1;
}

posxjugador += movimientojugador;
posxjugador= constrain(posxjugador, 0, 668);

background(0);
background(escenario);
  tint(colorear);
  image  (meteorito, 0 ,0);
  noTint();
  image(nave, posxnave, 30);
   if (movimientojugador > 0) {
    if (alternarImagen) {
      image(derecha1, posxjugador, 580);
    } else {
      image(derecha2, posxjugador, 580);
    }
  } else if (movimientojugador < 0) {
    if (alternarImagen) {
      image(izquierda1, posxjugador, 580);
    } else {
      image(izquierda2, posxjugador, 580);
    }
  } else {
    image(jugadorfrente, posxjugador, 580);
  }
}

void keyPressed(){
  if (key == 'a' || key == 'A'){
    movimientojugador= -velocidadjugador;
    alternarImagen= !alternarImagen;
  } else if (key == 'd' || key == 'D'){
    movimientojugador= velocidadjugador;
    alternarImagen= !alternarImagen;
  }
}

void keyReleased(){
  if ((key == 'a' || key == 'A') && movimientojugador < 0){
    movimientojugador= 0;
  } else if ((key == 'd' || key == 'D') && movimientojugador > 0){
    movimientojugador= 0;
  }
}
