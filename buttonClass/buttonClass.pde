int acc1Bal = 0;
int acc2Bal = 0;

ArrayList<Button> buttonsList = new ArrayList<Button>();

void setup() {
  size(700, 700);
  
  // Generate string array of all texts for the buttons
  String[] texts = new String[4];
  texts[0] = "+100";
  texts[1] = "-100";
  texts[2] = "+100";
  texts[3] = "+100";
  
  for (int i=0; i<4; i++) {
    buttonsList.add(new Button(150 * i, 50, texts[i]));
  }
}

void draw() {
  clear();
  background(170);
  
  // Draw all buttons
  for (int i=0; i<4; i++) {
    Button b = buttonsList.get(i);
    b.drawButton();
  }
  
  fill(0,0,0);
  textSize(60);
  text(acc1Bal, 100, 400);
  text(acc2Bal, 400, 400);
}

void mouseClicked() {
  // Let each button check if it is clicked
  for (int i=0; i<4; i++) {
    Button b = buttonsList.get(i);
    b.registerClick();
  }
  
  // Check each button if it is clicked, then add or substract from account
  if (buttonsList.get(0).buttonPressed) {
    acc1Bal += 100;
  }
  
  if (buttonsList.get(1).buttonPressed) {
    acc1Bal -= 100;
  }
  
  if (buttonsList.get(2).buttonPressed) {
    acc2Bal += 100;
  }
  
  if (buttonsList.get(3).buttonPressed) {
    acc2Bal += 100;
  }
}

void mouseReleased() {
  // Set buttonClicked to false for each button
  for (int i=0; i<4; i++) {
    Button b = buttonsList.get(i);
    b.stopClick();
  }
}






//////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////

class Button {
  boolean buttonPressed = false;
  float posX, posY, btnHeight, btnWidth;
  String text;
  
  // Create button and control all paramters
  Button(float positionX, float positionY, float buttonWidth, float buttonHeight, String title) {
    posX = positionX;
    posY = positionY;
    btnWidth = buttonWidth;
    btnHeight = buttonHeight;
    text = title;
  }
  
  // Create button with standard width and height
  Button(float positionX, float positionY, String title) {
    posX = positionX;
    posY = positionY;
    btnWidth = 150;
    btnHeight = 70;
    text = title;
  }
  
  
  // Draw the button and write text onto
  void drawButton() {
    fill(204, 102, 0);
    rect(posX, posY, btnWidth, btnHeight);
    fill(0,0,0);
    textAlign(CENTER, CENTER);
    textSize(30);
    text(text, posX, posY, btnWidth, btnHeight);
  }
  
  
  // Register mouse clicks
  void registerClick() {
    boolean insideX = mouseX > posX && mouseX < posX+btnWidth;
    boolean insideY = mouseY > posY && mouseY < posY+btnHeight;
    
    if (insideX && insideY) {
      buttonPressed = true;
    }
  }
  
  
  void stopClick() {
    buttonPressed = false;
  }
  
}
