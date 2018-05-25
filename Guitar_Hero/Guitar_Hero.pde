
Notes n=new Notes();
Track t=new Track();
void setup() {
size(800,900);
background(100);
}


void draw() {
  background(0);
  n.displayNotes();
  t.drawTrack();
  
}