
boolean pageChange = true;

BlackHole hole;

void setup() {
  size(1400, 1400);
  hole = new BlackHole(width / 2, height / 2, 100);
}
void draw() {
  if (pageChange == true) {
    background(255);  // Interesting events
  } else {
    background(0);    // Mundane events
  }

  hole.HoleAndLineDisplay(pageChange);
}

void mouseClicked() {
  pageChange = !pageChange;
}
