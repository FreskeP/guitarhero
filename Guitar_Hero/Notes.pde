class Notes {

  ArrayList<Note> myNotes=new ArrayList<Note>();

  public Notes() {
    for (int i=0; i<10; i++) {
      myNotes.add(new Note(245,0));
    }
  }
  
  void displayNotes(){
    for (int i=0; i<10; i++) {
      myNotes.get(i).display();
    }
  }
}

//(int)(Math.random()*800), (int)(Math.random()*100))