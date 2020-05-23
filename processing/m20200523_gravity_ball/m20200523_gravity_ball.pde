float g = 100;
float dt = 0.1;

class Ball {
    float x, v;

    Ball() {
        x = 100.0;
        v = -3.0;
    }

    void update() {
        if(x + dt * v > 0) {
            x = x + dt * v;
            v -= dt * g;
        } else {
            x = -(x + dt * v);
            v = -v;
            v -= dt * g;
        }
    }

    void display() {
        ellipse(100, -x + 200, 10, 10);
    }
}

Ball ball;

void setup() {
  size(400, 400);
  noStroke();
  fill(0);
 
  ball = new Ball();
}
 
 void draw() {
  background(255);
 
  ball.update(); 
  ball.display();
}
