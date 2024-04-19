PImage escenario;
PImage nave;
int space= 0;

void setup(){
  size(720, 720);
  escenario= loadImage("escenario.png");
  nave= loadImage("nave.png");
  background(0);
}

void draw(){
  image(escenario, 0, 0, width - space, height - space);
  image(nave, 0, 0, width - space, height - space);
}
