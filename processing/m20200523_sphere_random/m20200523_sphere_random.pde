import processing.opengl.*;

float there_noise_seed = random(10);
float phi_noise_seed = random(10);

float radius = 200;

void setup() {
  frameRate(60);

  size(700, 700, OPENGL);
  background(239);
} 

void draw() {
    float theta = 20*noise(there_noise_seed + 0.01 * frameCount);
    float phi = 20*noise(phi_noise_seed + 0.01 * frameCount);

    float x = radius * sin(theta) * cos(phi);
    float y = radius * sin(theta) * sin(phi);
    float z = radius * cos(theta);

    pushMatrix();
    translate(x + 350, y + 350, z + 200);

    fill(100, 0);
    stroke(100 + random(100));
    box(10);
    popMatrix();
}