class Note{
  private int x;
  private int y;
  
  Note(int x, int y){
    this.x=x;
    this.y=y;
  }
  
  
  void display(){
    
    fill(255, 0, 0);
    ellipse(x, y, 50, 50);
    y++; 
  }
}