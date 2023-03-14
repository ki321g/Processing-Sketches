boolean newletter;
boolean direction;
boolean jump;
float velocity;
float velocityconst;
Player player;



void setup() {
    size(1280,720);
    player = new Player(color(255,0,0),0,height-25,8);
    velocityconst = -8.0;
    velocity = velocityconst;
}

void draw() {
    background(255);
    if(newletter == true) {
        player.drive(direction);
    }
    if(jump == true) {
        player.jump();
    }
    player.display();
   // newletter = false;
}

void keyPressed()
{
    if(key == 'A' || key == 'a') {
        direction = false;
        newletter = true; 
    } else if (key == 'D' || key == 'd') {
        direction = true;
        newletter = true;
    }

    if (key == 'W' || key == 'w') {
        jump = true;
    } 
}

void keyReleased()
{
    if (key == 'A' || key == 'a' || key == 'D' || key == 'd') {
        newletter = false;
    }
}
