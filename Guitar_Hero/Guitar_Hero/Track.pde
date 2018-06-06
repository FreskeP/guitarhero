public class Track {

   public Track() {
    
  }
   void drawTrack() {
    fill(50);
    rect(210, 0, 400, 900);

    fill(0, 250, 0);
    ellipse(245, 850, 60, 60);

    fill(250, 0, 0);
    ellipse(320, 850, 60, 60);

    fill(255, 250, 0);
    ellipse(395, 850, 60, 60);

    fill(0, 0, 250);
    ellipse(470, 850, 60, 60);

    fill(255, 99, 71);
    ellipse(545, 850, 60, 60);
    
    text("Points:", 0, 20);
     
    //text("Click Enter to Play", 350, 450);
  }
}