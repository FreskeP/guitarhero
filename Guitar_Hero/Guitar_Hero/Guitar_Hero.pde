
ArrayList<Note>myNotes=new ArrayList<Note>();
int count;
int points=0;
boolean start;
Track t= new Track();
int savedTime;
int totalTime = 1000;


void setup() {
  size(800, 900);
  background(100);
}




void draw() {
  background(0);
  text("Click Control to Play", 350, 450);
  beginGame();
  int passedTime = millis() - savedTime;
  if (passedTime > totalTime) {
    randomizedFalling();
    savedTime = millis();
  }
}


void beginGame() {
  if (key==CODED) {
    if (keyCode == CONTROL) {
      start=true;
    }
    if (start==true) {
      t.drawTrack();  
      displayNotes();
      theScore();

      //gameOver();
    }
  }
}

void keyPressed() {
  if (key==CODED) {
    if (keyCode == UP) {
      for (int i=0; i<myNotes.size(); i++) {
        if (myNotes.get(i).getY()>820 && myNotes.get(i).getY()<890 && myNotes.get(i).getX()==245) {
          myNotes.get(i).setY(1500);
          points+=1;
        }
        else if (myNotes.get(i).getY()<820 || myNotes.get(i).getY()>890 && myNotes.get(i).getX()!=245) {
          myNotes.get(i).setY(1500);
        
        }
      }
    }


    if (keyCode == DOWN) { 

      for (int i=0; i<myNotes.size(); i++) {
        if (myNotes.get(i).getY()>820 && myNotes.get(i).getY()<890 && myNotes.get(i).getX()==320) {
          myNotes.get(i).setY(1500);
          points+=1;
        }
        else if (myNotes.get(i).getY()<820 || myNotes.get(i).getY()>890 && myNotes.get(i).getX()!=320) {
          myNotes.get(i).setY(1500);
         
        }
      }
      if (keyCode == LEFT) { 

        for (int i=0; i<myNotes.size(); i++) {
          if (myNotes.get(i).getY()>820 && myNotes.get(i).getY()<890 && myNotes.get(i).getX()==395) {
            myNotes.get(i).setY(1500);
            points+=1;
          }
          else if (myNotes.get(i).getY()<820 || myNotes.get(i).getY()>890 && myNotes.get(i).getX()!=395) {
            myNotes.get(i).setY(1500);
           
          }
        }
      }
      if (keyCode == RIGHT) { 

        for (int i=0; i<myNotes.size(); i++) {
          if (myNotes.get(i).getY()>820 && myNotes.get(i).getY()<890 && myNotes.get(i).getX()==470) {
            myNotes.get(i).setY(1500);
            points+=1;
          }
          else if (myNotes.get(i).getY()<820 || myNotes.get(i).getY()>890 && myNotes.get(i).getX()!=470) {
            myNotes.get(i).setY(1500);
            
          }
        }
      }
      if (keyCode==SHIFT) { 

        for (int i=0; i<myNotes.size(); i++) {
          if (myNotes.get(i).getY()>820 && myNotes.get(i).getY()<890 && myNotes.get(i).getX()==545) {
            myNotes.get(i).setY(1500);
            points+=1;
          }
          else if (myNotes.get(i).getY()<820 || myNotes.get(i).getY()>890 && myNotes.get(i).getX()!=545) {
            myNotes.get(i).setY(1500);
            
          }
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
  for(int i=0; i<myNotes.size(); i++) {
    if(myNotes.get(i).getY()==900) {
      count++;
    if(count==1) {
      restart();
    }
  }
  }
}
public void restart() {
  
  for(int i=0; i<myNotes.size(); i++) {
    myNotes.remove(i);

  }
}