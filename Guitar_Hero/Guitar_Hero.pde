
Track t=new Track();
Notes n=new Notes();


void setup() {
  size(800, 900);
  background(100);
}




void draw() {
  background(0);
  t.drawTrack();
  n.displayNotes();

}

  void keyPressed() {

    if (key==CODED) {
      if (keyCode == UP) {
       for(Note ec: myNotes) {
         myNotes.get(ec)=color(50);
         
       }
      }
    }
  }