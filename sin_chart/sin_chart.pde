float startX = 0.0;
float startY;
float endX;
float endY;
int distance = 20;
float[] sinHolder = new float[distance];
float a = 0.0;
float inc = TWO_PI/25.0;

void setup() {
  size(600, 600);
  
  coordinateSystem();
}



void coordinateSystem() {
  line(0, height/2, width, height/2);
  line(width/2, height, width/2, 0);
  
  // save the sin instances
  for (int i = 0; i < width; i+=distance) {
    fill(0);
    float multiplicator = 20.0;
    circle(i, height/2+(sin(a)*multiplicator), 5);
    
    line(i, height/2+(sin(a)*multiplicator), i + distance, height/2+(sin(a + inc)*multiplicator));
    a = a + inc;
  }
  
  // x-Achse beschriften
  for (int i = 0; i < width; i+=distance) {
    line(i, height/2 + 5, i, height/2 - 5);
  }
  // y-Achse beschriften
  for (int i = height/*200*/; i > 0; i-=distance) {
    line(height/2 + 5, i, width/2 - 5, i);
  }
}

void sinRef() {

  float a = 0.0;
  float inc = TWO_PI/25.0;

  for (int i = 0; i < 100; i=i+4) {
    point(i, 50+sin(a)*40.0);
    a = a + inc;
  }
}
