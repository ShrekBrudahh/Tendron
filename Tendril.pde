public class Tendril{
  private int myNumSegments, myX, myY;
  private double myAngle;
  private float[] randAngles;
  private int SEG_LENGTH = 5;
  public Tendril(int len, double theta, int x, int y){
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
    randAngles = new float[myNumSegments];
    for (int i = 0; i < randAngles.length; i++){
      randAngles[i] = (float)(rand(-2,2))/10.0;
    }
  }
  public void show(){
    int startX = myX;
    int startY = myY;
    for (int i = 0; i < myNumSegments; i++){
      //myAngle += (float)(rand(-2,2))/10.0;
      myAngle += randAngles[i];
      int endX = (int)(startX + Math.cos(myAngle) * SEG_LENGTH);
      int endY = (int)(startY + Math.sin(myAngle) * SEG_LENGTH);
      line(startX,startY,endX,endY);
      startX = endX;
      startY = endY;
    }
    if (myNumSegments >= 5){
      new Cluster(myNumSegments/3,startX,startY);
    }
  }
}

