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
}