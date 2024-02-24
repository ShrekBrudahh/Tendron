public class Cluster{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    ArrayList<Tendril> tendrils = new ArrayList<Tendril>();
    public Cluster(int len, int x, int y){
      for (int i = 1; i <= NUM_STEMS; i++){
        //tendrils.add(new Tendril(len,((2*Math.PI)/NUM_STEMS)*i,x,y));
         Tendril lil = new Tendril(len,((2*Math.PI)/NUM_STEMS)*i,x,y);
         lil.show();
      }
    }
    public void show(){
      for (int i = 0; i < tendrils.size(); i++){
        tendrils.get(i).show();
      }
    }
}
