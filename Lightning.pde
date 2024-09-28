// P65 WARNING:
// THIS CODE IS KNOWN TO THE STATE OF CA TO CAUSE CANCER AND BIRTH DEFECTS


void setup()
{
  size(500, 500);
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
  while(((0 <= x) && (x <= limit)) && ((0 <= y) && (y <= limit))){
    x += (int)(Math.random()*(step+1)) * x_weight;
    y += (int)(Math.random()*(step+1)) * y_weight;
    stroke(0,0,255);
    strokeWeight(6);
    line(last[0], last[1], x, y);
    last[0] = x;
    last[1] = y;
  }
}
