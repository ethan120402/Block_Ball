int n = 0;

Block[] b = new Block[700];
Bar bar = new Bar(450,500,80,5);
Ball ball = new Ball(0,0,0,0);

void setup() {
    size(900,600);
    
    rectMode(CENTER);
    
    int a = 0;
    for (int y = 100;y <=  300;y = y + 30) {
        
        for (int x = 100;x < 800;x = x + 60) {
            b[a] = new Block(x,y,50,10);
            a = a + 1;
        }
        
        
    }
}

void draw() {
    background(10);
    n = n + 1;
    //println("-->" + n);
    for (Block n : b) {
        
        if (n!= null) {
            n.show();
        }
        
        
    }
    bar.move();
    bar.show();
   if (bar.hit2(ball) ==  true) {
        ball.bounce();
    }
    // check blocks
    for (int i = 0; i < b.length; i++) {
        if (b[i] == null) {
            continue;
        }
        if (b[i].hit2(ball) == true) {
            ball.bounce();
            // block set null
            b[i] = null;
            break;
        }
    }
        
    // ball movement
    if (ball.dx ==  0 && ball.dy ==  0) {
        // ball is on the bar
        ball.moveByBar(bar);
        if (mousePressed) {
            ball.fire();
        }
    } else{
        ball.move();
    }
    ball.show();    
    
} 

