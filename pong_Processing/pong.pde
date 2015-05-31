import processing.serial.*;

Panel plr1;
Panel plr2;
Ball ball;
PFont f;
Serial myPort;
int val1;
int val2;

void setup() {
  size(800, 600);
  background(0, 0, 0);
  plr1 = new Panel(50, height/2, 10, 50);
  plr2 = new Panel(width-50, height/2, 10, 50);
  ball = new Ball(width/2, height/2);
  f=createFont(“Consolas”, 16, true);
  this.y=y;
  size = 20;
  xVelocity = -2;
  yVelocity = -1;
}

public void move() {
  if (y>height-size) {
    yVelocity = -yVelocity;
    if (y<0) {
      yVelocity = -yVelocity;
    }
System.out.println(“Top: 
    “ + plr2.y);
System.out.println(“Bottom: 
    “ + (plr2.y+50));
    if (x>width-70) {
      //check if hitting panel
      if (y<(plr2.y+50)) {
        if (y>(plr2.y)) {
        }
        String portName = “/dev/cu.usbmodem1421”;
        myPort = new Serial(this, portName, 9600);
        void draw() {
          background(0, 0, 0);
          if ( myPort.available() >
            val1 = myPort.read();
          val2 = myPort.read();
        }
        //plr1.y = mouseY;
        //plr2.y = mouseY;
        System.out.println(val1);
        Float mapped1 = map(val1, 
        Float mapped2 = map(val2, 0, 255, 0, height-50);
        plr1.y = mapped1.intValue();
        plr2.y =  mapped2.intValue();
        plr1.lastY=plr1.y;
        plr2.lastY=plr2.y;
        //System.out.println(plr1.y);
        //move stuff
        ball.move();
        //System.out.println(ball.y);
        //draw stuff
        plr1.draw();
        plr2.draw();
        ball.draw();
        textFont(f, 16);
        fill(255);
        text(plr1.getPointString(), 100, 100);
        text(plr2.getPointString(), width-100, 100);
        xVelocity = -abs(xVelocity);
        if (xVelocity>0) {
          xVelocity++;
        } else {
          xVelocity--;
        }
        yVelocity +=(10*plr2.speed);
        myPort.write(5);
      }
      0) {  // If data is available,
        // read it and store it in val
        0, 255, 0, height-50);
      }
    }
    // STEP 4 Specify font to be used
    // STEP 5 Specify font color
    if (y>(plr1.y)) {
      xVelocity = abs(xVelocity);
      if (xVelocity>0) {
        xVelocity++;
      } else {
        xVelocity--;
      }
      yVelocity +=(10*plr1.speed);
      myPort.write(5);
    }
  }
}
}}
plr2.points++;
class Ball {
  int x;
  int y;
  float xVelocity;
  float yVelocity;
  int size;
  public Ball(int x, int y) {
    this.x=x;
  }
  if (x>width) {
    reset();
    plr1.points++;
  }
  this.x = (int) Math.round(this.x + this.xVelocity);
  this.y = (int) Math.round(this.y + this.yVelocity);
}
if (x<60) {
  //check if hitting panel
  if (y<(plr1.y+50)) {
    if (x<0) {
      reset();
      public void reset() {
        x=width/2;
        y=height/2;
        xVelocity= random(-5, 5);
        yVelocity= random(-5, 5);
        myPort.write(10);
      }
      public void setX(int x) {
        this.x=x;
      }
      public void setY(int y) {
        this.y=y;
      }
      public void draw() {
        rect(x, y, size, size);
      }
      class Panel {
        public int x;
        public int y;
        int w;
        int h;
        int points;
        float speed;
        int lastX;
        int lastY;
        public Panel(int x, int y, int w, int h) {
          this.x = x;
          this.y = y;
          this.w = w;
          this.h=h;
          fill(255, 255, 255);
          noStroke();
          rect(x, y, w, h);
        }
      }

