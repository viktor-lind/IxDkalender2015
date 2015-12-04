PImage backGroundImage;
int rainColor = 255;
int numOfDrops = 700;
int numOfStars = 30;
Snow[] _snow = new Snow[numOfDrops];
<<<<<<< HEAD
//PShape[] _stars = new PShape[numOfStars];
//float _starXPos = random(1920);
float _starYPos = random(100);
//float _starWidth = random(4, 20);
//float _starHeight = random(4, 20);
float _starSize = 0;
float growth = 0.2;
=======
int elThick = 5;
int _width = 75;
int _height = 75;
int time = 0;
int timer;
int count = 0;
int count2 = 0;

>>>>>>> origin/master
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
void mouseClicked() {
  if (grid(100, 920, _width, _height)) {
    doorOpen(100, 920, _width, _height);
  }
}
void draw()
{
<<<<<<< HEAD
  background(0);
  image(backGroundImage, 0, 0, width, height);
=======
  mouseClicked();
  timer = millis();
  image(backGroundImage,0,0,width,height);
>>>>>>> origin/master
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