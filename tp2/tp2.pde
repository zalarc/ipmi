/*
TP2
Comisión 5
Alarcón Guzmán, Zion
85045/7
*/

/*
¡COMENTARIOS!
  -Las diapositivas se pasan con click
  -Había tenido problemas con la fuente
    y con hacer las diapositivas, como no
    podía resolver los errores que me daba y
    me estaba volviendo loco, gasté tiempo en
    resolver lo de la fuente.
    Tampoco pude añadir efectos a los textos.
  -Este código es lo que pasé en limpio porque
    en el que estaba trabajando era un caos.
  -Para el recuperatorio voy a areglar todo.
*/

  PImage portada;
  PImage argumento;
  PImage pjs;
  PFont fuente;
  int contador = 0;
  int tiempo = 0;
  int pantalla = 1;
  
void setup () {
  size(640,480);
  portada = loadImage ("portada.png");
  argumento = loadImage ("argumento.png");
  pjs = loadImage ("personajes.png");
  fuente = loadFont ("BellMTItalic-48.vlw");
  textFont (fuente);
  textSize (20);
}

void draw(){

  if (pantalla == 1) {
    image (portada,0,0);
    fill(250);
    text("Pantalla 1", 10, 20); // En cada pantalla voy a dejar esto
    push ();
    textSize (25);
    text ("El libro que presentaré se llama\n'Entrevista con el vampiro', de\nla autora Anne Rice.\nEs el primer libro de la saga\n'Crónicas vampíricas'.\nLa novela fue escrita en 1973 \npero publicada 3 años más tarde.\nEn el año 1994 se estrenó\nla película basada en esta\nnovela y fue protagonizada por\nTom Cruise, Brad Pitt,\nChristian Slater, Antonio Banderas,\nKirsten Dunst y Stephen Rea.", 20, 80);
    pop ();
  } else if (pantalla == 2) {
    image (argumento,0,0);
    fill(0);
    text("Pantalla 2", 10, 20);
    push ();
    textSize (30);
    text ("El libro se centra en el tema de la inmortalidad,\nla pérdida, la sexualidad y el poder.\nSe convirtió rápidamente en un éxito de culto\ny tuvo gran influencia en la subcultura gótica.\n(Extracto de Wikipedia)\n \nRice, en esta novela, rompió con el esquema\ntradicional de lo que se concebía como\n'vampiro', centrándose en el aspecto más humano\n(vida social, sentimientos, deseos, sufrimiento).", 20, 80);
    pop ();
  } else if (pantalla == 3) {
    image (pjs,0,0);
    fill(250);
    text("Pantalla 3", 10, 20);
    push ();
    textSize (25);
    text ("Los personajes más relevantes de este primer libro son:", 20, 80);
    pop ();
    push ();
    textSize (25);
    text ("-Lestat de Lioncourt\n-Louis de Pointe du Lac\n-Armand\n-Claudia\nSiendo esta última de\nrelevancia por tratarse\nde una niña convertida\nalgo que los vampiros\nno aceptan.", 330, 125);
    pop ();
  }
}

void mouseClicked() {
  if (pantalla == 3) {
    pantalla = 1;
  } else {
    pantalla = pantalla + 1;
  }
}

void keyPressed() {
  
  if (pantalla == 1) {
  } else if (pantalla == 2) {
    contador = contador + 1;
  } else if (pantalla == 3) {

  }
}
