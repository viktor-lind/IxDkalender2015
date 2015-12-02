PImage backGroundImage;

void setup()
{
  size(1920,1080);
  backGroundImage = loadImage("bakgrund.jpg");
  santa = loadImage("santa.png");
}

void draw()
{
  image(backGroundImage,0,0,width,height);
  santaWalking();
}