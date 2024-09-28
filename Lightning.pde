// P65 WARNING:
// THIS CODE IS KNOWN TO THE STATE OF CA TO CAUSE CANCER AND BIRTH DEFECTS

int size_x = 500;
int size_y = 500;

void setup()
{
  windowResize(size_x, size_y);
  background(0,0,0);
}

void draw()
{
  
}

void mousePressed()
{
  generate_path(250,250, (int)(Math.random()*2)==0?-1:1,(int)(Math.random()*2)==0?-1:1, 20, 500);
}

void generate_path(int x, int y, int x_weight, int y_weight, int step, int limit){
    int[] last = {x, y};
  System.out.println("start");
  while(((0 <= x) && (x <= limit)) && ((0 <= y) && (y <= limit))){
    x += (int)(Math.random()*(step+1)) * x_weight;
    y += (int)(Math.random()*(step+1)) * y_weight;
    System.out.println(x);
    System.out.println(y);
    System.out.println("draw");
    stroke(0,0,255);
    strokeWeight(6);
    line(last[0], last[1], x, y);
    last[0] = x;
    last[1] = y;
  }
}
