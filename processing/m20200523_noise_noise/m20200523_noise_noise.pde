import processing.opengl.*;

float x_noise_seed = random(10);
float y_noise_seed = random(10);
float z_noise_seed = random(10);

float x_noise_seed2 = random(10);
float y_noise_seed2 = random(10);
float z_noise_seed2 = random(10);

void setup() {
  frameRate(60);

  size(700, 700, OPENGL);
  background(239);
}

void draw() {
  background(239);

  for (int x = -200; x <= 200; x += 10) {
    for (int y = -200; y <= 200; y += 10) {
        for (int z = -200; z <= 200; z += 10) {
            float noise = noise(
                x_noise_seed + 0.03 * x + frameCount * 0.05,
                y_noise_seed + 0.03 * y + frameCount * 0.05,
                z_noise_seed + 0.03 * z + frameCount * 0.05
            );

            float color_noise = noise(
                x_noise_seed2 + 0.03 * x + frameCount * 0.05,
                y_noise_seed2 + 0.03 * y + frameCount * 0.05,
                z_noise_seed2 + 0.03 * z + frameCount * 0.05
            );

            if (noise > 0.6){
                pushMatrix();
                translate(x + 350, y + 350, z);

                fill(255 * color_noise, 100);
                noStroke();
                box(9);
                // sphere(9);
                
                popMatrix();
            }
        }
    }
  }

}

