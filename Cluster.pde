public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster

  public Cluster(int len, int x, int y)
  {
    double angle = (Math.random()*TWO_PI)-PI;
    Tendril bob = new Tendril(len, angle, x, y);
    bob.show();
    Tendril a = new Tendril(len, angle+(Math.random()*TWO_PI)-PI, x, y);
    a.show();
    Tendril b = new Tendril(len, angle+(Math.random()*TWO_PI)-PI, x, y);
    b.show();
    Tendril c = new Tendril(len, angle+(Math.random()*TWO_PI)-PI, x, y);
    c.show();
    Tendril d = new Tendril(len, angle+(Math.random()*TWO_PI)-PI, x, y);
    d.show();
    Tendril e = new Tendril(len, angle+(Math.random()*TWO_PI)-PI, x, y);
    e.show();
    Tendril f = new Tendril(len, angle+(Math.random()*TWO_PI)-PI, x, y);
    f.show();
  }
}
