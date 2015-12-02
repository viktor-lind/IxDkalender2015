PImage backGroundImage;

void setup()
{
  fullScreen();
  backGroundImage = loadImage("bakgrund.jpg");
}

void draw()
{
  image(backGroundImage,0,0,width,height);
}