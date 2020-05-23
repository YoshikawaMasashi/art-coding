void fibonacci_rect(float x, float y, float width, float height, boolean is_big) {
    float div_length;
    if (is_big) {
        div_length = 150;
    } else {
        div_length = 75;
    }

    noFill();
    stroke(0);
    if (div_length >= height) {
        rect(x, 0, width, height);
    } else {
        rect(x, height - div_length, width, div_length);

        float big_width = width * 1.618 / (1 + 1.618);
        float small_width = width - big_width;
        fibonacci_rect(x, y + div_length, big_width, height - div_length, true);
        fibonacci_rect(x + big_width, y + div_length, small_width, height - div_length, false);
    }
}

void setup() {
    size(700, 700);
    background(239);

    fibonacci_rect(0, 0, 700, 700, true);
}
