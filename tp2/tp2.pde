String estado;
PImage Fondo1;
PImage logo;
PImage Fondo2;
PImage Fondo3;
PImage Fondo4;
PImage combate; 
PImage cuadro; 
PImage pers;
PImage tidus;
PImage yuna;
PImage kimahri;
PImage lulu;

int alpha;
float x;
float y1;
float xuno;
float xdos;
float x3;
float x4;
float x5;
float x6;
float x7;
float x8;
String text1 = "Final Fantasy X es la décima entrega de la serie Final Fantasy. Fue desarrollado por Square y publicado para PlayStation 2. La historia se desarrolla en el mundo de Spira, donde la humanidad lucha contra una amenaza llamada Sin. Sin es una criatura destructiva que ataca las ciudades y pueblos, causando devastación."; 
String text2 = "Final Fantasy X es un RPG (juego de rol) japonés, con un sistema de combate basado en turnos llamado BTV (Batalla por Turnos Variables) controlados por una barra determinada por los parámetros de los personajes. Según el comando elegido, los turnos variarán (p.e. al utilizar un turbo se pierden algunos turnos posteriores). En un combate podemos manejar hasta tres personajes a la vez, aunque podemos sustituirlos en batalla, una de las principales novedades de esta entrega. Tanto los escenarios como los personajes están hechos con modelos 3D";
String text3 = "Edad: 17 años. \nHogar: Zanarkand. \nArma/s: Espada larga. \nTurbo: Esgrima.";
String text4 = "Edad: 17 años. \nHogar: Besaid. \nArma/s: Varas. \nTurbo: Invocación.";
String text5 = "Edad: 25 años. \nHogar: Monte Gagazet \nArma/s: Lanzas. \nTurbo: Tecnica robada.";
String text6 = "Edad: 22 años. \nHogar: Besaid. \nArma/s: Peluches. \nTurbo: Tentación.";

void setup(){
size(640, 480);
background(255); 
Fondo1 = loadImage("fondo.jpg");
logo = loadImage("logo.png");
Fondo2 = loadImage("azul infinito.jpeg");
Fondo3 = loadImage("fondo2.png");
Fondo4 = loadImage("fondo3.jpg");
pers = loadImage("personaje.png");
cuadro = loadImage("cuadro.png");
tidus = loadImage("tidus.png");
yuna = loadImage("yuna.png");
kimahri = loadImage("Kimahri.png");
lulu = loadImage("Lul.png");
combate = loadImage("combate.jpg");
xdos = 0;
estado = "diap1";
alpha = 1;
x = 640;
y1 = 480;
xuno = 0;
x3 = 0;
x4 = 0;
x5 = 0;
x6 = 0;
x7 = 0;
x8 = 0;
}
void draw(){
println(mouseX + " , " + mouseY);

    alpha = alpha + 2;


// ----------------DIAP1---------------------------
  if (estado.equals("diap1") ){
    image(Fondo1, 0,0);
    image(logo, 178, 24, 280, 260);
    stroke( 255);
    strokeWeight(5);
    noFill();
    rect(277, 326, 122, 48, 2);
    fill(255);
    textAlign( LEFT, TOP );
    textSize( 37 );
    text("START", 288, 337);}
  
  
  
  
  
// ----------------DIAP2---------------------------
  else if(estado == "descripcion"){
    background(255);
    image(Fondo2, 0, 0);
    image(pers, 338, 0);
    fill(255, 255, 255, alpha);
    textSize(40);
    text("SOBRE EL JUEGO", 37, 44);
    noStroke();
    fill(60, 124, 247);
    rect(49, 103, 250, 320, 20);
    x -= 8; 
    fill(255);
    textAlign( LEFT, TOP );
    textSize(18);
    text(text1, x, 118, 200, 500);
    fill(30, 38, 229, 100);
    circle(30, 18, 20);
    circle(612, 18, 20);
    fill(85, 92, 255, 100);
    triangle(25, 18, 33, 14, 33, 22);
    triangle(610, 14, 618, 18, 610, 22);}





// ----------------DIAP3---------------------------
  else if(estado == "jugabilidad"){
     background(255);
     image(Fondo3, 0, 0);
     image(combate, 43, 31, 340, 200);
     fill(171, 37, 245, alpha);
     textSize(40);
     text("JUGABILIDAD", 402, 102);
     fill(222, 77, 255);
     rect(71, 262, 500, 190, 20);
     fill(255);
     textAlign( LEFT, TOP );
     textSize(17);
        y1 -= 5; 
     text(text2, 88, y1, 475, 500);
     fill(149, 16, 222, 100);
     circle(30, 18, 20);
     circle(612, 18, 20);
     fill(216, 144, 255, 100);
     triangle(25, 18, 33, 14, 33, 22);
     triangle(610, 14, 618, 18, 610, 22);
 
 }
 // ----------------DIAP3---------------------------
   else if(estado == "personajes"){
     background(0);
     image(Fondo4, 0, 0);
     image(cuadro, -15, 47, 250, 300 );
     image(cuadro, 125, 47, 250, 300 );
     image(cuadro, 265, 47, 250, 300 );
     image(cuadro, 405, 47, 250, 300 );
     image(tidus, 30, 78, 210, 180 );
     image(yuna, 30+130, 78, 170, 180 );
     image(kimahri, 160+190, 78, 80, 180 );
     image(lulu, 250+180, 78, 145, 180 );
     fill(100, 172, 247, 100);
     rect(57, 269, 109, 160, 2);
     fill(255, 255, 255, 100);
     rect(57+139, 269, 109, 160, 2);
     fill(38, 20, 250, 70);
     rect(196+140, 269,109, 160, 2);
     fill(164, 80, 255, 100);
     rect(335+140, 269, 109, 160, 2);
     
    
     textAlign( CENTER, CENTER);
     textSize(40);
     fill(255, 255, 255, alpha);
     text("PERSONAJES", 318, 48);
     xdos += 5;
     textSize(15);
     textAlign( LEFT, TOP );
     fill(100, 172, 247);
     textSize(17);
     text("TIDUS", xdos, 275);
     xuno += 5;
     fill(100, 172, 247);
     textSize(15);
     text(text3, xuno, 300, 95, 400);

     x3 += 7;
     fill(255);
     textSize(17);
     text("YUNA", x3, 275);
     x6 += 7;
     textSize(15);
     text(text4, x6, 319, 95, 400);

     x4 += 9;
     fill(124, 144, 255);
     textSize(17);
     text("KIMAHRI", x4, 275);
     textSize(15);
     x7 += 9;
     text(text5, x7, 300, 95, 400);

     x5 += 11;
     fill(215, 136, 250);
     textSize(17);
     text("LULU", x5, 275);
     x8 += 11;
     textSize(15);
     text(text6, x8, 304, 95, 400);
  
     fill(0, 0, 0, 100);
     circle(30, 18, 20);
     fill(70, 70, 70, 50);
     triangle(25, 18, 33, 14, 33, 22);
     
     stroke( 255);
     strokeWeight(5);
     noFill();
     rect(532, 7, 100, 48, 2);
     fill(255);
     textAlign( CENTER, TOP );
     textSize(16);
     text("Volver al \ninicio", 586, 14);
     noStroke();
  }

//color botones
  if(estado == "diap1" && mouseX > 277 && mouseX < 277+122 && mouseY > 326 && mouseY < 326 + 48) {
    fill(255, 255, 255, 90);
    rect(277, 326, 122, 48, 2); }
  if(estado == "descripcion" && (dist(mouseX, mouseY, 30, 18) < 20 / 2)){
    fill(30, 38, 229);
    circle(30, 18, 20);
    fill(85, 92, 255);
    triangle(25, 18, 33, 14, 33, 22);}
  if (estado == "descripcion" && (dist(mouseX, mouseY, 612, 18) < 20 / 2)){
    fill(30, 38, 229);
    circle(612, 18, 20);
    fill(85, 92, 255);
    triangle(610, 14, 618, 18, 610, 22);}
  if(estado == "jugabilidad" && (dist(mouseX, mouseY, 30, 18) < 20 / 2)){
    fill(149, 16, 222);
    circle(30, 18, 20);
     fill(216, 144, 255);
    triangle(25, 18, 33, 14, 33, 22);}
  if (estado == "jugabilidad" && (dist(mouseX, mouseY, 612, 18) < 20 / 2)){
    fill(149, 16, 222);
    circle(612, 18, 20);
     fill(216, 144, 255);
    triangle(610, 14, 618, 18, 610, 22);}
  if(estado == "personajes" && (dist(mouseX, mouseY, 30, 18) < 20 / 2)){
    fill(0);
     circle(30, 18, 20);
     fill(70);
     triangle(25, 18, 33, 14, 33, 22);}
  if(estado == "personajes" && mouseX > 532 && mouseX < 532+100 && mouseY > 7 && mouseY < 7 + 48) {
    fill(255, 255, 255, 90);
    rect(532, 7, 100, 48, 2); }
    
//animaciones
  
    if (x < 74){
    x = 74;}
    if (y1 < 270){
    y1 = 270;}
    
    if (xdos > 85){
    xdos = 85;} 
    if (x3 > 224){
    x3 = 224;} 
    if (x4 > 358){
    x4 = 358;} 
    if (x5 > 507){
    x5 = 507;}
    
    if (xuno > 62){
    xuno = 62;} 
    if (x6 > 204){
    x6 = 204;} 
    if (x7 > 340){
    x7 = 340;} 
    if (x8 > 480){
    x8 = 480;}
 //transiciones por tiempo   
     if ( frameCount/60 >= 8 ) {
      estado = "descripcion";}
     if ( frameCount/60 >= 14 ) {
      estado = "jugabilidad";}
     if ( frameCount/60 >= 20 ) {
      estado = "personajes";}
  
}

void mousePressed(){
  if (estado == "diap1" && mouseX > 277 && mouseX < 277+122 && mouseY > 326 && mouseY < 326 + 48){
     estado = "descripcion";}
  if (estado == "descripcion" && dist(mouseX, mouseY, 30, 18) < 20 / 2) {
    estado = "diap1";}
  if (estado == "descripcion" && dist(mouseX, mouseY, 612, 18) < 20 / 2) {
    estado = "jugabilidad";}
  else if(estado == "jugabilidad" && dist(mouseX, mouseY, 612, 18) < 20 / 2) {
    estado = "personajes";} 
  else if (estado == "personajes" && mouseX > 532 && mouseX < 532+100 && mouseY > 7 && mouseY < 7 + 48) {
     estado = "diap1";}
  if (estado == "jugabilidad" && dist(mouseX, mouseY, 30, 18) < 20 / 2) {
    estado = "descripcion";}
  if (estado == "personajes" && dist(mouseX, mouseY, 30, 18) < 20 / 2) {
    estado = "jugabilidad";}
  

 
}
