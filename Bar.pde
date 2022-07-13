class Bar extends Block{
    Bar(float x, float y, float w ,float h){
        super(x,y,w,h);
    }
    void move(){
        x=mouseX;
    }
}
