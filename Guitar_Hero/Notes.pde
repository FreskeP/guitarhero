class Notes {

  ArrayList<Note> myNotes=new ArrayList<Note>();
  
  public Notes() {
    //int random=(int)(Math.random(0,100));


    myNotes.add(new Note(245, 0));
    myNotes.add(new Note(320, 0));
    myNotes.add(new Note(395, 0));
    myNotes.add(new Note(470, 0));
    myNotes.add(new Note(545, 0));
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
    

      //myNotes.add(new Note()
      //int i=0;
      //while(myNotes.get(i).getY()!=901){
      //   if (myNotes.get(i).getY()==125) {
      //    myNotes.add(new Note(280, 0));

      //  } 
      //  i++;
      //}
    }
    void displayNotes() {
      randomizedFalling();
      //println("size " + myNotes.size());
      for (int i=0; i<myNotes.size(); i++) {
        myNotes.get(i).display();
      }
    }
  }


  //(int)(Math.random()*800), (int)(Math.random()*100))