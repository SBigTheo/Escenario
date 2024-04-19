PImage escenario;
PImage nave;
PImage jugadorfrente;

int space= 0;
int posx= 0;
int direccion= 1;
int velocidad= 3;

void setup(){
  size(720, 720);
  escenario= loadImage("escenario.png");
  jugadorfrente= loadImage("frente.png");
  jugadorfrente.resize(52, 64);
  nave= loadImage("nave.png");
  nave.resize(120, 67);
}

void draw(){  
  posx +=velocidad *direccion;
if(posx <= 0 || posx >= width - nave.width){
  direccion *= -1;
}

  image(escenario, 0, 0, width - space, height - space);
  image(nave, posx, 30);
  image(jugadorfrente, 0, 580);
}
