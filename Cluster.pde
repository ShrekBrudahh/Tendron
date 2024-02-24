public class Cluster{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    public Cluster(int len, int x, int y){
      for (int i = 1; i <= NUM_STEMS; i++){
         Tendril lil = new Tendril(len,((2*Math.PI)/NUM_STEMS)*i,x,y);
         lil.show();
      }
    }
}
