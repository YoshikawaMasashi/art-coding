void fibinacci_branch(float start_x, float start_y, float direction, float width, boolean is_big) {
    float div_length;
    if (is_big) {
        div_length = int(5 + random(4));
    } else {
        div_length = int(10 + random(8));
    }

    float direction_x = sin(radians(direction));
    float direction_y = -cos(radians(direction));
    for(int i = 0; i < div_length; i++){
        colorMode(HSB, 1);
        noStroke();
        fill(color((random(0.2) - 0.1) % 1.0, 0.3, 0.3), 0.7);
        ellipse(start_x + 10 * i * direction_x, start_y + 10 * i * direction_y, width, width);

        noStroke();
        for(int j = 0; j < 50 - width; j++){
            fill(color(random(0.3) + 0.2, random(0.1) + 0.5, random(0.2) + 0.5), 0.3);
            ellipse(start_x + 10 * i * direction_x + random(50) - 25, start_y + 10 * i * direction_y+ random(50) - 25, 5, 5);
        }
    }

    float length;
    if (width > 10) {
        float big_width = width * sqrt(1.618 / (1 + 1.618));
        float small_width = width * sqrt(1 / (1 + 1.618));

        float divide_mode;
        if(random(2) > 1) {
            divide_mode = 1;
        } else {
            divide_mode = -1;
        }

        float big_direction = direction + divide_mode * 17;
        fibinacci_branch(start_x + 10 * div_length * direction_x, start_y + 10 * div_length * direction_y, big_direction, big_width, true);

        float small_direction = direction - divide_mode * 17;
        fibinacci_branch(start_x + 10 * div_length * direction_x, start_y + 10 * div_length * direction_y, small_direction, small_width, true);
    }


}

void setup() {
    size(700, 700);
    background(239);

    fibinacci_branch(350, 600, 0, 70, true);
}
