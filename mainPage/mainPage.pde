PImage backGroundImage;
int rainColor = 255;
int numOfDrops = 100;
Snow[] _snow = new Snow[numOfDrops];

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

void draw()
{
  
  image(backGroundImage,0,0,width,height);
  santaWalking();
  noStroke();
  
  
  smooth();
  for (int i = 0; i < _snow.length; i++)
  {
    _snow[i].circle();
  }
}