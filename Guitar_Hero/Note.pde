class Note {
  private int xLoc;
  private int yLoc;

  Note( int x, int y) {
    xLoc=x;
    yLoc=y;
  }
  public int getY() {
    return yLoc;
  }

  public void setY(int y) {
    yLoc=y;
  }
  public int getX() {
    return xLoc;
  }

  void display() {

    fill(255, 0, 0);
    ellipse(xLoc, yLoc, 50, 50);
    yLoc++;
    if (yLoc==1200) {
      yLoc--;
    }
    if (yLoc==1000) {
      yLoc++;
    }
  }
}