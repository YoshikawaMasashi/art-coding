import processing.opengl.*;

float xnoise_seed = random(10);
float ynoise_seed = random(10);
float znoise_seed = random(10);

void setup() {
  frameRate(60);

  size(700, 700, OPENGL);
  background(239);
} 
  
void draw() {
  //background(239);

  for (int x = -300; x <= 300; x += 50) {
		for (int y = -300; y <= 300; y += 50) {
      float distance = 600 - sqrt(x * x + y * y);

      float xnoise = noise(xnoise_seed + 0.1 * (distance * 0.001 + frameCount * 0.008));
      float ynoise = noise(ynoise_seed + 0.1 * (distance * 0.001 + frameCount * 0.008));
      float znoise = noise(znoise_seed + 0.1 * (distance * 0.001 + frameCount * 0.008));

      pushMatrix();
      translate(x + 350, y + 350, 0);

      rotateZ(map(znoise, 0, 1, -180, 180));
      rotateY(map(ynoise, 0, 1, -180, 180));
      rotateX(map(xnoise, 0, 1, -180, 180));

      fill(39);
      box(24);

      noFill();
      stroke(239);
      box(25);
      popMatrix();
    }
  }

}

