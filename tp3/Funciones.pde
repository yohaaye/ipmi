void grilla(int mod, int px, int py) {
  for (int i = 400; i < 810; i += mod) {
    for (int j = -5; j < 400; j += mod) {
      float d = dist(i, j, px, py);
      float tam = map(d, 540, 0, 40, 0);
      float tono = calcularTono(i, j); 
      noStroke();
      fill(tono);
      circle(i, j, tam);
    }
  }
}

float calcularTono(int x, int y) {
  float distan = dist(mouseX, mouseY, x, y);
  return distan * 255 / dist(200, 200, 0, 0);
}

void restablecerVariables() {
  mod = 22;
  px = 600;
  py = 200;
  colorfondo = 0;
}
