void fibinacci_branch(float start_x, float start_y, float direction_x, float direction_y, float width, boolean is_big) {
    float div_length;
    if (is_big) {
        div_length = 7;
    } else {
        div_length = 14;
    }

    for(int i = 0; i < div_length; i++){
        ellipse(start_x + 10 * i * direction_x, start_y + 10 * i * direction_y, width, width);
    }
    // noFill();
    stroke(0);

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

        float big_direction_x = direction_x + divide_mode * 0.5;
        float big_direction_y = direction_y;
        length = sqrt(big_direction_x * big_direction_x + big_direction_y * big_direction_y);
        big_direction_x /= length;
        big_direction_y /= length;

        fibinacci_branch(start_x + 10 * div_length * direction_x, start_y + 10 * div_length * direction_y, big_direction_x, big_direction_y, big_width, true);


        float small_direction_x = direction_x - divide_mode * 0.5;
        float small_direction_y = direction_y;
        length = sqrt(small_direction_x * small_direction_x + small_direction_y * small_direction_y);
        small_direction_x /= length;
        small_direction_x /= length;

        fibinacci_branch(start_x + 10 * div_length * direction_x, start_y + 10 * div_length * direction_y, small_direction_x, small_direction_y, small_width, true);
    }


}

void setup() {
    size(700, 700);
    background(239);

    fibinacci_branch(350, 600, 0, -1, 70, true);
}
