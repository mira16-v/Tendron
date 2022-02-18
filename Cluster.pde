public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        Tendril bob = new Tendril(4, PI, 250, 250);
        bob.show();
    }
}
