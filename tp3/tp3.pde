//https://youtu.be/Yk0kXIHWb7c
PImage img;
int px;
int py;
float colorfondo; 
int mod;

void setup() {
  size(800, 400);
  img = loadImage("foto.jpg");
  mod = 22;
  px = 600;
  py = 200;
  colorfondo = 0;
}

void draw() {
  background(colorfondo);
  image(img, 0, 0);
  grilla(mod, px, py);
}
