// WIP

float px, py;

void setup() {
  size(400, 400);
  px=width/2.0;
  py=height/2.0;
}

void draw() {
  background(-1);

  stroke(0);
  strokeWeight(1);
  noFill();
  beginShape();
  float div=12;
  for (int i=0; i<div; i++) {
    vertex(qPx(px, 150, 360*(i/div)-360/(div*4)), qPy(py, 150, 360*(i/div)-360/(div*4)));
    vertex(qPx(px, 180, 360*(i/div)-360/(div*4)), qPy(py, 180, 360*(i/div)-360/(div*4)));
    vertex(qPx(px, 180, 360*(i/div)+360/(div*4)), qPy(py, 180, 360*(i/div)+360/(div*4)));
    vertex(qPx(px, 150, 360*(i/div)+360/(div*4)), qPy(py, 150, 360*(i/div)+360/(div*4)));
  }
  endShape(CLOSE);
}


float qPx(float _x, float _r, float _deg) { //x
  return _x+_r*cos(radians(_deg));
}

float qPy(float _y, float _r, float _deg) { //y
  return _y+_r*sin(radians(_deg));
}