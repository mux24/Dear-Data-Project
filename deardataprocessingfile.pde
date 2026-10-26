String[] lines;

void setup() {

  lines = loadStrings("dataforproject.txt");
  size(3000, 5800);
  fill(0);
  textSize(14);
}

void draw() {
  background(255);
  float yPos = 50;
  
  for (String line : lines) {
    text(line, 20, yPos);
    yPos = yPos + 28;
  }
}
