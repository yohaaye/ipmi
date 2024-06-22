

void mouseDragged() {
   px = mouseX;
   py = mouseY;
  
}
void keyPressed() {
  if (key == ' ') {
    px = 600;
    py = 200;
    colorfondo = 0;
  }
  if (key == 'c') {
    colorfondo = random(0, 255);
  }
}
