
class BlackHole {
  float x;
  float y;
  float blackholeSize;
  float rotation;

  BlackHole(float xPos, float yPos, float Size) {
    x = xPos;
    y = yPos;
    blackholeSize = Size;
    rotation = 0;
  }

  void HoleAndLineDisplay(boolean BlackOrWhitePage) {

    rotation = rotation + 0.1;

    if (BlackOrWhitePage == true) {
      fill(255);
      stroke(0); // line color
    } else {
      fill(-1);
      stroke(255);
    }

    strokeWeight(1.5);
    noFill();

    // Draw the curved lines
    for (int i = 0; i < 24; i++) {
      float angle = TWO_PI * i / 24 + rotation;

      float Xstart = x + cos(angle) * blackholeSize;
      float Ystart = y + sin(angle) * blackholeSize;

      float controlX = x + cos(angle + 0.3) * 250;
      float controlY = y + sin(angle + 0.3) * 250;

      float controlX2 = x + cos(angle + 0.6) * 450;
      float controlY2 = y + sin(angle + 0.6) * 450;

      float Xend = x + cos(angle + 0.7) * 650;
      float Yend = y + sin(angle + 0.7) * 650;

      bezier(
        Xstart, Ystart,
        controlX, controlY,
        controlX2, controlY2,
        Xend, Yend
        );
    }
    ellipse(x, y, blackholeSize * 2, blackholeSize * 2);
  }
}
