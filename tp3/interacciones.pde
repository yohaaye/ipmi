

void keyPressed() {
  if (key == ' ') {
    restablecerVariables();
  }
  if (key == 'c') {
    colorfondo = random(0, 255);
  }
  if (key == '+') {
    mod++;
  }
  if (key == '-') {
    mod--;
  }
}
void mouseDragged() {
   px = mouseX;
   py = mouseY;
  
}
