boolean grid(int x, int y, int _width, int _height) {
  if (mouseX>x && mouseY>y &&mouseX<x+_width && mouseY<y+_height) {
    return true;
  } else {
    return false;
  }
}
void doorOpen(int x, int y, int _width, int _height) {
  for (int i = 0; i<10; i++) {
    fill(i*25);
    // Ska köras var 5e millisec v
    star(x, y, _width, _height - i*8);
  }
}
void star(int x, int y, int _width, int _height) {
  if (timer>time && count2<10) {
    // Ska köras varje millis
    ellipse(x-5*count, y+_height-pow(count, 2), elThick, elThick);
    time = timer + 5;
    count++;
    println(time);
    println(timer);
    count2++;
  }
}