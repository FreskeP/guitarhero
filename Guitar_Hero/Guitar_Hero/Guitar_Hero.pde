
ArrayList<Note>myNotes=new ArrayList<Note>();
int count=0;
int points=0;
boolean start=true;
Track t= new Track();
int savedTime;
int totalTime = 1000;


void setup() {
  size(800, 900);
  background(100);
}




void draw() {
  if (start==true) {
    background(0);
    text("Click Control to Play", 350, 450);
    //beginGame();
    t.drawTrack();  
    displayNotes();
    theScore();
    int passedTime = millis() - savedTime;
    if (passedTime > totalTime) {
      randomizedFalling();
      savedTime = millis();
    }
    gameOver();
    if (count==1) {
      start=false;
    }
  } else {
    background(255);
    text("ur garbage boi, click control to suck again", 350, 450);
    if (keyCode==' ') {
      start=true;
    }
  }
}


//void beginGame() {
//  if (key==CODED) {
//    if (keyCode == CONTROL) {
//      start=true;
//    }
//    if (start==true) {
//      t.drawTrack();  
//      displayNotes();
//      theScore();
//      gameOver();
//    }
//  }
//}

void keyPressed() {
  if (key==CODED) {


    if (keyCode == UP) {
      for (int i=0; i<myNotes.size(); i++) {
        if (myNotes.get(i).getY()>815 && myNotes.get(i).getY()<870 && myNotes.get(i).getX()==245) {
          myNotes.get(i).setY(1500);
          points+=1;
        }
      }
    }


    if (keyCode == DOWN) { 

      for (int i=0; i<myNotes.size(); i++) {
        if (myNotes.get(i).getY()>815 && myNotes.get(i).getY()<870 && myNotes.get(i).getX()==320) {
          myNotes.get(i).setY(1500);
          points+=1;
        }
      }
    }
    if (keyCode == LEFT) { 

      for (int i=0; i<myNotes.size(); i++) {
        if (myNotes.get(i).getY()>815 && myNotes.get(i).getY()<870 && myNotes.get(i).getX()==395) {
          myNotes.get(i).setY(1500);
          points+=1;
        }
      }
    }
    if (keyCode == RIGHT) { 

      for (int i=0; i<myNotes.size(); i++) {
        if (myNotes.get(i).getY()>815 && myNotes.get(i).getY()<870 && myNotes.get(i).getX()==470) {
          myNotes.get(i).setY(1500);
          points+=1;
        }
      }
    }
    if (keyCode==SHIFT) { 

      for (int i=0; i<myNotes.size(); i++) {
        if (myNotes.get(i).getY()>815 && myNotes.get(i).getY()<870 && myNotes.get(i).getX()==545) {
          myNotes.get(i).setY(1500);
          points+=1;
        }
      }
    }
  }
}



void randomizedFalling() {
  int r=(int)(Math.random()*5)+1;

  if (r==1) {
    myNotes.add(new Note(245, 0));
  }
  if (r==2) {
    myNotes.add(new Note(320, 0));
  }
  if (r==3) {
    myNotes.add(new Note(395, 0));
  }
  if (r==4) {
    myNotes.add(new Note(470, 0));
  }
  if (r==5) {
    myNotes.add(new Note(545, 0));
  }
}


void displayNotes() {
  
  for (int i=0; i<myNotes.size(); i++) {
    myNotes.get(i).display();
    
  }
  
}
public void theScore() {
  text(points, 50, 20);
}
public void gameOver() {
  int count=0;
  for (int i=0; i<myNotes.size(); i++) {
    if (myNotes.get(i).getY()==875) {
      count++;
      System.out.println(count);
      if (count==2) {
        start=false;
        text("ur garbage boi, click control to suck again", 350, 450);
        //for(Note n: myNotes) {
        // delay(1000000000);
        if (key==CODED) {
          if (keyCode == CONTROL) {

            //beginGame();
            //}
          }
        }
      }
    }
  }
}