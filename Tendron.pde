public void setup()
{
  size(500, 500);  
  background(21,234,208);
  noLoop();
  //rectMode(CENTER);
}

public void draw()
{
  background(21,234,208);
  Cluster c = new Cluster(65, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}

