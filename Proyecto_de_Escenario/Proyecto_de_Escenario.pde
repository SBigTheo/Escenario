PImage escenario;
PImage nave;

int space= 0;
int posx= 0;
int direccion= 1;
int velocidad= 3;

void setup(){
  size(720, 720);
  escenario= loadImage("escenario.png");
  nave= loadImage("nave.png");
  nave.resize(120, 67);
  background(0);
}

void draw(){  
  background(0);
  posx +=velocidad *direccion;
if(posx <= 0 || posx >= width - nave.width){
  direccion *= -1;
}

  image(escenario, 0, 0, width - space, height - space);
  image(nave, posx, 30);
}
