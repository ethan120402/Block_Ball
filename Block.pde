public class Block{
    float x;
    float y;
    float w;
    float h;
    public Block(float x, float y, float w, float h) {
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
        
    }
    void show() {
        rect(x,y,w,h);
    }
    
    boolean hit(Ball ball) {
        if (abs(ball.by - y) <= h / 2 + ball.radius) {            
            return true;            
        }
        if (ball.by > 480) {
            return true;
        }
        return false;
    }
    
    boolean hit2(Ball ball) {
        
        // it can't move vertically
        if (ball.dy ==  0) {
            return false;
        }
        // the ball move upward and block is below the ball
        if (ball.dy < 0 && y > ball.by) {
            return false;
        }
        // the ball move downward and block is above the ball
        if (ball.dy > 0 && y < ball.by) {
            return false;
        }        
        if (ball.dx!= 0) {
            // estimate the bouncing point
            float b = ball.by - ball.bx * (ball.dy / ball.dx);
            float nx = (y - b) * (ball.dx / ball.dy); // 估計投影在 block 上的 x
            //println("ball(" + ball.bx + " , " + ball.by + " )  +d(" + ball.dx + " , " + ball.dy + ")  block( " + x + " , " + y + " ) ==> nx " + nx);
            
            if (x - w / 2 - ball.radius <=  nx  && nx <= x + w / 2 + ball.radius) {
                line(nx,y,ball.bx,ball.by);
                return hit(ball);
            }
            return false;
            
        } else{
            return hit(ball);
        }
    }
}