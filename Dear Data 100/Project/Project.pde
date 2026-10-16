boolean pageChange = true;


void setup() {
  size(1400, 1400);
  background(1);
}


void draw() {
  println("1");
}

void mouseClicked(){
  if (pageChange == true) {
    background(0);
    pageChange = false;
  } else {
    pageChange = true;
    background(255);
    
  }
}
