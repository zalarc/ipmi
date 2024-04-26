/*
TP1
Comisión 5
Alarcón Guzmán, Zion
85045/7
*/
PImage kiwi;
void setup(){
  size (800, 400);
  background (#FFFFFF); // Puse hex en los colores para copiar más rápido los valores
  kiwi = loadImage("kiwi.jpg");
}

void draw(){
  image (kiwi, 0, 0, 400, 400);
  noStroke();
  fill(#AA9856);
  ellipse(488, 199, 220, 320); // Kiwi entero
  fill(#AA9856);
  rect(405, 42, 165, 315, 90); // Parte inferior del kiwi entero  
  fill(#9D8C4E);
  ellipse(627, 283, 230, 180); // Parte marrón del kiwi cortado
  fill(#81AA56);
  ellipse(627, 283, 220, 170); // Parte verde del kiwi cortado
  fill(#7A9D54);
  rect(553, 249, 150, 70, 35); // Rectángulo verde oscuro
  fill(#E4F091);
  rect(570, 282, 120, 10, 28); // Rectángulo verde claro
  
// A partir de acá son todas semillas
  stroke(#000000);
  strokeWeight(6);
  // Semillas superiores
  point(568, 299);
  point(578, 272);
  point(585, 277);
  point(600, 275);
  point(611, 273);
  point(622, 264);
  point(634, 270);
  point(644, 265);
  point(658, 279);
  point(667, 268);
  point(675, 273);
  point(687, 264);
  point(694, 283);
  // Semillas inferiores < a >
  point(562, 283);
  point(578, 297);
  point(585, 297);
  point(600, 307);
  point(611, 299);
  point(622, 303);
  point(634, 295);
  point(644, 300);
  point(658, 299);
  point(667, 305);
  point(675, 293);
  point(687, 298);
  
  
}  
void mouseClicked(){ 
  println(mouseX, mouseY);
}
