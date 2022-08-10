public class Block{
    float x;
    float y;
    float w;
    float h;
    public Block (float x, float y, float w, float h){
        this.x=x;
        this.y=y;
        this.w=w;
        this.h=h;

    }
    void show(){
        rect(x,y,w,h);
    }
    boolean hit(Ball ball){
        if(abs(ball.by-y) <= h/2+ball.raduis){
            if(x-w/2-ball.raduis<=ball.bx&&ball.bx<=x+w/2+ball.raduis){
                return true;
            }
        }
        return false;
    }
}