PImage  escenario;

int space= 0;

void setup(){
  size(720, 720);
  escenario= loadImage("escenario.png");
}

void draw(){
  image(escenario, 0, 0, width - space, height - space);
}
