int n = 0;
Block[] b = new Block[1000];
Bar bar = new Bar(450,500,80,10);
void setup() {
    size(900,600);
    
    
    
    int a = 0;
    for (int y = 100;y <=  400;y = y + 30) {
        
        for (int x = 100;x < 800;x = x + 60) {
            b[a] = new Block(x,y,50,10);
            a = a + 1;
        }
        
        
    }
}

void draw() {
    background(10);
    n = n + 1;
    println("-->" + n);
    for (Block n : b) {
        
        if (n!= null) {
            n.show();
            }
        
        
        }
    bar.move();
    bar.show();
    }