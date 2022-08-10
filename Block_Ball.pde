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
    
    if (bar.hit(ball) ==  true) {
        ball.bounce();
    }
    
    for (int i = 0;i < b.length;i++) {
        if (b[i]!= null) {
            if (b[i].hit(ball) ==  true) {
                b[i] = null;
                ball.bounce();
                break;
            }
        }
        
    }
    
    if (ball.dx ==  0 &&  ball.dy ==  0) {
        ball.moveByBar(bar);
        if (mousePressed) {
            ball.fire();
        }
    } else{
        ball.move();
    }
    
    ball.show();
    
} 

