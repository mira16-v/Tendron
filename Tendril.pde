class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    line(x, y, x+(int)theta, y+len); //is it supposed to be a line???
    line(x, y, x+(int)theta, y+len);
    line(x, y, x+(int)theta, y+len);
    line(x, y, x+(int)theta, y+len);
  }
  public void show()
  {
    //your code here
  }
}
