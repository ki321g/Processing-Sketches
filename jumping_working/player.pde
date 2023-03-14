class Player {
    color c;
    float xpos;
    float ypos;
    float xspeed;

Player(color clr, float xPos, float yPos, float xSpeed) {
        c = clr;
        xpos = xPos;
        ypos = yPos;
        xspeed = xSpeed;
    }

    void display() {
        rectMode(CENTER);
        noStroke();
        fill(c);
        rect(xpos,ypos,50,50);
    }

    void drive(boolean dir) {
        if ((xpos + xspeed) > width && (dir)) {
            float remainder = float(width) - xpos;
            xpos = 0 + (xspeed - remainder);
        } else if ((xpos - xspeed) < 0 && !(dir)) {
            float remainder = xpos - 0;
            xpos = width - (xspeed - remainder);
        } else {
            if (dir) xpos += xspeed;
            else xpos -= xspeed;
        }
    }

    void jump() {
        velocity = velocity + 0.5;
        if(ypos + velocity > (height-25)) {
            ypos =height-25;
            jump = false;
            velocity = velocityconst;
        } else {
            ypos += velocity;
        }
    }
}
