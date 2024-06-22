//https://youtu.be/IUJ0s-rwskQ

PImage img;
int px;
int py;
float colorfondo; 

void setup() {
  size(800, 400);
  img = loadImage("foto.jpg");

  px = 600;
  py = 200;
  colorfondo = 0;

}

void draw() {
  background(colorfondo);
  image(img, 0, 0);
  grilla();
}
