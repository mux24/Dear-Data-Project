class Button {
  
  
  // defining variables for constructor
  int xPos, yPos, width, height;
  String label;
  int labelX, labelY;
  color buttonColour, textColour;
  
  // constructor
  Button (int xPos, int yPos, int width, int height, String label, int labelX, int labelY, color buttonColour, color textColour) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.width = width;
    this.height = height;
    this.label = label;
    this.labelX = labelX;
    this.labelY = labelY;
    this.buttonColour = buttonColour;
    this.textColour = textColour;
  }
  
  
  // draw method
  void drawButton() {
    
    fill(buttonColour);
    rect(xPos, yPos, width, height);
    
    fill(textColour);
    text(label, labelX, labelY);
  }
}

// declare buttons and import external data file as global variables

String[] lines;

Button button1;
Button button2;
Button button3;


void setup() {

  lines = loadStrings("dataforproject.txt");
  
  size(1280, 720);
  fill(0, 0, 255);
  
  textSize(20);

  
  button1 = new Button(5, 5, 420, 710, "Games", 20, 35, #D8D8D8, #0F0F0F);
  button2 = new Button(430, 5, 420, 710, "Books", 445, 35, #D8D8D8, #0F0F0F);
  button3 = new Button(855, 5, 420, 710, "TV Series", 870, 35, #D8D8D8, #0F0F0F);


}



void draw() {
  
  background(#A7C7E7); // lilac background
  
  
  button1.drawButton();
  button2.drawButton();
  button3.drawButton();  
  
}
