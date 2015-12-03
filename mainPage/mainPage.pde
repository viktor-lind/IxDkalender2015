PImage backGroundImage;
int rainColor = 255;
int numOfDrops = 700;
int numOfStars = 30;
Snow[] _snow = new Snow[numOfDrops];
//PShape[] _stars = new PShape[numOfStars];
//float _starXPos = random(1920);
float _starYPos = random(100);
//float _starWidth = random(4, 20);
//float _starHeight = random(4, 20);
float _starSize = 0;
float growth = 0.2;
void setup()
{
  size(1920, 1080);
  backGroundImage = loadImage("bakgrund.jpg");
  santa = loadImage("santa.png");
  for (int i = 0; i < _snow.length; i++)
  {
    _snow[i] = new Snow();
  }
  //_stars = createShape(ELLIPSE(_starXPos, _starYPos, _starWidth, _starHeight);
}

void draw()
{
  background(0);
  image(backGroundImage, 0, 0, width, height);
  santaWalking();
  noStroke();
  fill(0);
  _createStars();

  smooth();
  for (int i = 0; i < _snow.length; i++)
  {
    _snow[i].circle();
  }
}
void _createStars()
{
boolean state = false;
int number = 0;
  ellipse(400, _starYPos, _starSize, _starSize );
  if (state == false) {
    if(number > 45){
      while(_starSize>1){
      _starSize = _starSize - 0.2;
      }
    }else{
    while (_starSize < 10)
    {
      _starSize = _starSize + 0.2;
      number++;
    }
    }
  }
}