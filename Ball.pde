public class Ball{
    float dx; 
    float dy;

    float bx;
    float by;
    float raduis;
    public Ball(int bx, int by, float dx, float dy){
        this.dx=dx;
        this.dy=dy;
        this.bx=bx;
        this.by=by;
        this.raduis=15;
    }
    void show(){
        circle(bx, by, raduis*2);
    }

    void moveByBar(Bar bar){
        bx=bar.x;
        by= bar.y-15;
    }
 
    void move(Bar bar){
        bx=bx+dx;
        by=by+dy;
        if(by<0){
            dy=dy*-1;
        }
        if(bx<0){
            dx=dx*-1;
        }
        if(bx>width){
            dx=dx*-1;
        }
        if(by>height){
            dx=0;
            dy=0;
        }
        if(bar.hit(this)==true){
              dy=dy*-1;
        }
    }
    void fire(){
        dy=random(5,10)*-1;
        dx=10-abs(dy);
        if(Math.random()<0.5){
            dx=dx*-1;
        }
           bx=bx+dx;
        by=by+dy;
    }
}