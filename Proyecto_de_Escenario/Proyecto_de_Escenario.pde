PImage escenario;
PImage nave;
PImage jugadorfrente;

int space= 0;
int posxnave= 0;
int direccionnave= 1;
int velocidadnave= 3;

int posxjugador= 0;
int velocidadjugador= 4;
int movimientojugador= 0;

void setup(){
  size(720, 720);
  escenario= loadImage("escenario.png");
  escenario.resize(720, 720);
  jugadorfrente= loadImage("frente.png");
  jugadorfrente.resize(52, 64);
  nave= loadImage("nave.png");
  nave.resize(120, 67);
}

void draw(){  
  posxnave +=velocidadnave *direccionnave;
if(posxnave <= 0 || posxnave >= width - nave.width){
  direccionnave *= -1;
}

posxjugador += movimientojugador;
posxjugador= constrain(posxjugador, 0, 668);

background(escenario);
  image(nave, posxnave, 30);
  image(jugadorfrente, posxjugador, 580);
}

void keyPressed(){
  if (key == 'a' || key == 'A'){
    movimientojugador= -velocidadjugador;
  } else if (key == 'd' || key == 'D'){
    movimientojugador= velocidadjugador;
  }
}

void keyReleased(){
  if ((key == 'a' || key == 'A') && movimientojugador < 0){
    movimientojugador= 0;
  } else if ((key == 'd' || key == 'D') && movimientojugador > 0){
    movimientojugador= 0;
  }
}
