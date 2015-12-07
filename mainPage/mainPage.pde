PImage backGroundImage;
int rainColor = 255;
int numOfDrops = 100;
Snow[] _snow = new Snow[numOfDrops];

//Door open variables
int elThick = 5;
int _width = 75;
int _height = 75;
int time = 0;
int timer;
int count = 0;
int count2 = 0;
boolean test = false;

//snow variables
float _starSize = 0;
float growth = 1;
//Moon image
PImage moon;

// smoke variables 
int m2 = millis();

//snowman
PImage snowman1;
PImage snowman2;
void setup()
{
  size(1920, 1080, P2D);
  
  backGroundImage = loadImage("background.jpg");
  
  santa = loadImage("santa.png");
  moon = loadImage("moon.png");
   snowman1 = loadImage("snowman1.2.png");
  snowman2 = loadImage("snowman2.1.png");
  for (int i = 0; i < _snow.length; i++)
  {
    _snow[i] = new Snow();
  }
}
void draw()
{
  image(backGroundImage, 0, 0, width, height);
  timer = millis();
  
  tint(255, 150);
  image(moon, 600, -400, 700, 700);
  noTint();
  //santaWalking();
  fix();
  mouse();
  _drawSnowman();
  noStroke();
  _createStars();
  fill(255);
  rect(100, 920, _width, _height);
  smooth();
  for (int i = 0; i < _snow.length; i++)
  {
    _snow[i].circle();
  }
}