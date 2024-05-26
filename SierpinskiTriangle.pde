int smallest = 5;
boolean toggle = false;
public void setup() {
  size(550, 550);
}

public void draw() {
  background(50);
  sierpinski(0 + smallest/2, height - smallest, width);
}

public void mouseDragged() {
  if (smallest < height/2){
  smallest += 10;
  }
}

public void keyPressed() {
  if (smallest > 10) {
  smallest -=10;
  }
}

public void sierpinski(int x, int y, int len) {
  if (len <= smallest) {
    triangle(x, y, x - len/2, y + len, x + len/2, y + len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
