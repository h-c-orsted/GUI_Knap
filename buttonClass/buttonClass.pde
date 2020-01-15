class Button {
  boolean buttonPressed = false;
  float posX, posY, btnHeight, btnWidth;
  String text;
  
  Button(float positionX, float positionY, float buttonHeight, float buttonWidth, String title) {
    posX = positionX;
    posY = positionY;
    btnHeight = buttonHeight;
    btnWidth = buttonWidth;
    text = title;
  }
  
  Button(float positionX, float positionY, String title) {
    posX = positionX;
    posY = positionY;
    btnHeight = 70;
    btnWidth = 150;
    text = title;
  }
  
  
  void drawButton() {
    fill(204, 102, 0);
    rect(posX, posY, btnWidth, btnHeight);
    textAlign(CENTER);
    text(text, posX, posY, btnWidth, btnHeight);
    
  }
  
}
