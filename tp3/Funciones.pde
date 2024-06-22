
void grilla() {
  for ( int i = 400; i < 810; i+= 22) {
    for ( int j = -5; j < 400; j+= 22) {
      float d = dist( i, j, px, py);
      float tam = map( d, 540, 0, 40, 0 );
      float distan = dist(mouseX, mouseY, i, j);
      float tono = distan*255/dist(200, 200, 0, 0);

      noStroke();
      fill(tono);
      circle(i, j, tam);
    }
  }
}
