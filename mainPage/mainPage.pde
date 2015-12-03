PImage backGroundImage;
int rainColor = 255;
int numOfDrops = 100;
Snow[] _snow = new Snow[numOfDrops];
int elThick = 5;
int _width = 75;
int _height = 75;
int time = 0;
int timer;
int count = 0;
int count2 = 0;

void setup()
{
  size(1920,1080);
  backGroundImage = loadImage("bakgrund.jpg");
  santa = loadImage("santa.png");
  for (int i = 0; i < _snow.length; i++)
  {
    _snow[i] = new Snow();
  }
}
void mouseClicked() {
  if (grid(100, 920, _width, _height)) {
    doorOpen(100, 920, _width, _height);
  }
}
void draw()
{
  timer = millis();
  image(backGroundImage,0,0,width,height);
  santaWalking();
  noStroke();
  fill(255);
      rect(100, 920, _width, _height);
  mouseClicked();
  
  smooth();
  for (int i = 0; i < _snow.length; i++)
  {
    _snow[i].circle();
  }
}