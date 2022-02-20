class Tendril
{
  public final static int SEG_LENGTH = 3; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  private float endX;
  private float endY;
  private float startX;
  private float startY;
  //private float startX = myX;
  //private float startY = myY;


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
    startX = myX;
    startY = myY;
    for(int i = 0; i <= myNumSegments; i++) {
      stroke(240, 168, 53);
      //line((float)myX, (float)myY, (float)myX+(float)myAngle, (float)myY+(float)myAngle);
      myAngle = myAngle + (Math.random()*0.2)-0.2;
      //float d = (float)myAngle*SEG_LENGTH;
      endX = startX + cos((float)myAngle)*SEG_LENGTH;
      endY = startY + sin((float)myAngle)*SEG_LENGTH;
      //System.out.println("this is sx" + startX);
      //System.out.println("this is sy" + startY);
      //System.out.println("this is ex" + endX);
      //System.out.println("this is ey" + endY);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
      i++;
    }

    if (myNumSegments >= SEG_LENGTH) {
      Cluster m = new Cluster(myNumSegments-32, (int)endX, (int)endY);
    }
  }
}
