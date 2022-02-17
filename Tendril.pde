class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  private int i;
  private int startX = myX;
  private int startY = myY;
  
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;
    
  }
  public void show()
  {
    i = myNumSegments;
    while (i > 0){
      stroke(23, 126, 227);
      line((float)myX, (float)myY, (float)myX+(float)myAngle, (float)myY+(float)myAngle);
      myAngle = myAngle + Math.random();
      float endX = startX + cos((float)myAngle);
      i--;
    }
    
    
  }
}
