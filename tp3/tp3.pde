/*        Alarcón Guzmán, Zion
               85045/7
              Comisión 5
       (Acá va el link del video)
 */

PImage ilusion;
int columnasX = 12; // Cantidad de columnas de cuadrados en X
int filasY = 1;  // Cantidad de filas que van a ocupar en Y

// Posiciones y tamaños y grosores
int[][] posiciones = {
  {595, 195, 9, 2}, {589, 189, 21, 2}, {581, 181, 37, 3},
  {572, 172, 55, 3}, {562, 162, 74, 4}, {551, 151, 97, 5},
  {539, 139, 122, 5}, {523, 123, 153, 6}, {504, 104, 191, 10},
  {481, 81, 236, 10}, {453, 53, 292, 13}, {420, 20, 359, 13}
};

float[][] posColores; // Posiciones iniciales de los colores
float[][] posActuales; // Posiciones actuales de los colores
boolean moverColores = false;
boolean rectBlanco = true;

void setup() {
  ilusion = loadImage("ilusion.png");
  size(800, 400);
  background(255);
  noLoop(); // Para que se dibuje solo una vez el cambio de colores

  // Inicializar las posiciones de los colores
  posColores = new float[posiciones.length][2];
  posActuales = new float[posiciones.length][2];
  for (int i = 0; i < posiciones.length; i++) {
    posColores[i][0] = posiciones[i][0];
    posColores[i][1] = posiciones[i][1];
    posActuales[i][0] = posiciones[i][0];
    posActuales[i][1] = posiciones[i][1];
  }

  // Calcular y mostrar el área total de los rectángulos solo una vez
  float areaTotal = calcularAreaRectangulos();
  println("¿Sabías que el área total de los rectángulos es: " + areaTotal + "? Dejo este dato porque no se me ocurría qué hacer para que retorne un valor.");
}

void draw() {
  noFill();
  background(255);
  image(ilusion, 0, 0);

  // Esto es para que los colores se dibujen detrás de los rectángulos
  for (int i = 0; i < posiciones.length; i++) {
    fill(random(255), random(0), random(255), 100); // Colores aleatorios
    noStroke();
    rect(posActuales[i][0], posActuales[i][1], posiciones[i][2], posiciones[i][2]);
  }

  // Rectángulo blanco (sólo se dibuja al inicio, antes de interactuar
  //y aparece otra vez con la R)
  if (rectBlanco) {
    fill(255);
    noStroke();
    rect(400, 0, 400, 400);
  }

  // Rectángulos negros
  for (int i = 0; i < columnasX; i++) { //pos horizontal de los rect
    for (int j = 0; j < filasY; j++) { //pos vertical
      int index = i + j * columnasX;
      if (index < posiciones.length) {
        noFill();
        stroke(0); // Color negro para los rectángulos principales
        strokeWeight(posiciones[index][3]); // Ancho del stroke
        rect(posiciones[index][0], posiciones[index][1], posiciones[index][2], posiciones[index][2]);
      }
    }
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    rectBlanco = false;
    redraw();
  }
}

void mouseDragged() {
  if (mouseButton == LEFT) {
    moverColores = true; // Hace que los colores se muevan
    moverColores(mouseX - pmouseX, mouseY - pmouseY);
  }
}


void mouseReleased() {
  moverColores = false;
}

// Reiniciar superponiendo el rect blanco
void keyPressed() {
  if (key == 'r' || key == 'R') {
    rectBlanco = true;
    redraw();
  }
}

// Función propia que me permite mover los colores en mouseDragged
void moverColores(float deltaX, float deltaY) {
  for (int i = 0; i < posiciones.length; i++) {
    posActuales[i][0] = constrain(posColores[i][0] + deltaX, posColores[i][0] - 10, posColores[i][0] + 10);
    posActuales[i][1] = constrain(posColores[i][1] + deltaY, posColores[i][1] - 10, posColores[i][1] + 10);
  }
  redraw();
}

// Esta es mi función que devuelve un valor
float calcularAreaRectangulos() {
  float areaTotal = 0;
  for (int i = 0; i < posiciones.length; i++) {
    float area = posiciones[i][2] * posiciones[i][2];
    areaTotal += area;
  }
  return areaTotal;
}
