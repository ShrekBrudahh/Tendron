public Cluster mainCluster;
void setup(){
  size(700,700);
}

public int n = 0;
public int time = 100;

void draw(){
  background(0);
  stroke(255);
  mainCluster = new Cluster(50,350,350);
}
public int rand(int min, int max){
  return min + (int)(Math.random()*(1+(max-min)));
}
