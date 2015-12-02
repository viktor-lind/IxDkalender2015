int rainColor = 255;
int numOfDrops = 100;

Rain[] _rain = new Rain[numOfDrops];

void setup()
{

  size(1920, 1080);
  for (int i = 0; i < _rain.length; i++)
  {
    _rain[i] = new Rain();
  }
}

void draw()

{


  background(0);
  fill(rainColor);
  smooth();
  for (int i = 0; i < _rain.length; i++)
  {
    _rain[i].circle();
  }
}


class Rain
{
  float rainX = random(2000);
  float rainY = random(-2300);
  float rainX2 = random(2000);
  float rainY2 = random(-2300);
  float rainX3 = random(2000);
  float rainY3 = random(-2300);
  float rainX4 = random(2000);
  float rainY4 = random(-2300);
  float rainX5 = random(2000);
  float rainY5 = random(-2300);



  void circle()
  {
    fill(255, 255, 255, 110);
    ellipse(rainX, rainY, 9, 9);
    fill(255, 255, 255, 85);
    ellipse(rainX2, rainY2, 7, 7);
    fill(255, 255, 255, 150);
    ellipse(rainX3, rainY3, 11, 11);
    fill(255, 255, 255, 100);
    ellipse(rainX4, rainY4, 9, 9);
    fill(255, 255, 255, 90);
    ellipse(rainX5, rainY5, 6, 6);
    rainX = rainX + 0.4;
    rainY = rainY +1;
    if (rainY>height)
    {
      rainX = random(2000);
      rainY = -200;
    }

    rainX2 = rainX2 + 0.2;
    rainY2 = rainY2 + 1.4;

    if (rainY2>height)
    {
      rainX2 = random(2000);

      rainY2 = -200;
    }
    rainX3 = rainX3 + 0.1;
    rainY3 = rainY3 + 1;

    if (rainY3>height)
    {
      rainX3 = random(2000);
      rainY3 = -200;
    }
    rainX4 = rainX4 -0.2;
    rainY4 = rainY4 + 1.4;

    if (rainY4>height)
    {
      rainX4 = random(2000);

      rainY4 = -200;
    }
    rainX5 = rainX5 -0.7;
    rainY5 = rainY5 + 1;

    if (rainY5>height)
    {
      rainX5 = random(2000);
      rainY5 = -200;
    }
  }
}
