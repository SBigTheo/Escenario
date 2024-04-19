PImage  img;
int space= 0;
void setup(){
  size(720, 720);
  img= loadImage("escenario.png");
}

void draw(){
  image(img, 0, 0, width - space, height - space);
}
