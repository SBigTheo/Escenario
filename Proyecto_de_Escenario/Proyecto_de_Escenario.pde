PImage  img;
int space= 0;
void setup(){
  size(720, 720);
  img= loadImage("escenario.png");
}

void draw(){
  image(img, space, width, height);
}
