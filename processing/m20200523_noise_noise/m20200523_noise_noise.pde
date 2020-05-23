import processing.opengl.*;

float x_noise_seed = random(10);
float y_noise_seed = random(10);
float z_noise_seed = random(10);

float x_noise_seed2 = random(10);
float y_noise_seed2 = random(10);
float z_noise_seed2 = random(10);

void setup() {
  frameRate(60);

  size(600, 600, OPENGL);
  background(239);
}

void draw() {
  background(239, 239, 255);

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
                translate(x + 300, y + 300, z + 100);

                // fill(255 * color_noise, 100);
                // noStroke();
                noFill();
                stroke(140 + 100 * color_noise, 155 + 100 * color_noise, 140 + 100 * color_noise);
                box(9);
                // sphere(9);
                
                popMatrix();
            }
        }
    }
  }

}

