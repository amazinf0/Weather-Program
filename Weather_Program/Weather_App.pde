// Open Weather Map App
// Global Variables
String edmTemp, calgTemp, rdTemp;
color red=#FF0000, white=#FFFFFF;
//
void setup() {
  //Display
  size(500, 500); //Declared only for troubleshooting the image
  //Gemoetry
  //Population
  //DIV rect()
  APICall(); // unwrap and inflate all variables at once
  textSetup();
  GUI_Setup();
}
//
void draw() {
  // City Call, see procedure using Boolean & Button
  // Choice of Three Cities: Edmonton, Calgary, Red Deer
  // Button Hoverover
  if ( mouseX>quitX && mouseX<quitX+quitRectWidth && mouseY>quitY && mouseY<quitY+quitRectHeight ) {
    fill(red);
    rect(quitX, quitY, quitRectWidth, quitRectHeight);
    textDraw(quit, titleFont, height, #2C08FF, CENTER, CENTER, quitX, quitY, quitRectWidth, quitRectHeight); //Quit Button
  } else {
    fill(white);
    rect(quitX, quitY, quitRectWidth, quitRectHeight);
    textDraw(quit, titleFont, height, #2C08FF, CENTER, CENTER, quitX, quitY, quitRectWidth, quitRectHeight); //Quit Button
  }
  if ( mouseX>apiCallX1 && mouseX<apiCallX1+apiCallRectWidth1 && mouseY>apiCallY1 && mouseY<apiCallY1+apiCallRectHeight1 ) {
    fill(red);
    rect(apiCallX1, apiCallY1, apiCallRectWidth1, apiCallRectHeight1);
    textDraw(nameEdm, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX1, apiCallY1, apiCallRectWidth1, apiCallRectHeight1); //Edmonton
  } else {
    fill(white);
    rect(apiCallX1, apiCallY1, apiCallRectWidth1, apiCallRectHeight1);
    textDraw(nameEdm, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX1, apiCallY1, apiCallRectWidth1, apiCallRectHeight1); //Edmonton
  }
  if ( mouseX>apiCallX2 && mouseX<apiCallX2+apiCallRectWidth2 && mouseY>apiCallY2 && mouseY<apiCallY2+apiCallRectHeight2 ) {
    fill(red);
    rect(apiCallX2, apiCallY2, apiCallRectWidth2, apiCallRectHeight2);
    textDraw(nameCalg, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX2, apiCallY2, apiCallRectWidth2, apiCallRectHeight2); //Edmonton
  } else {
    fill(white);
    rect(apiCallX2, apiCallY2, apiCallRectWidth2, apiCallRectHeight2);
    textDraw(nameCalg, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX2, apiCallY2, apiCallRectWidth2, apiCallRectHeight2); //Edmonton
  }
  if ( mouseX>apiCallX3 && mouseX<apiCallX3+apiCallRectWidth3 && mouseY>apiCallY3 && mouseY<apiCallY3+apiCallRectHeight3 ) {
    fill(red);
    rect(apiCallX3, apiCallY3, apiCallRectWidth3, apiCallRectHeight3);
    textDraw(nameRD, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX3, apiCallY3, apiCallRectWidth3, apiCallRectHeight3); //Edmonton
  } else {
    fill(white);
    rect(apiCallX3, apiCallY3, apiCallRectWidth3, apiCallRectHeight3);
    textDraw(nameRD, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX3, apiCallY3, apiCallRectWidth3, apiCallRectHeight3); //Edmonton
  }
}
//
void keyPressed() {
  APICall(); // unwrap and inflate all variables at once
} //End keyPressed
//
void mousePressed() {
  APICall();// unwrap and inflate all variables at once
  println(apiCurrentDateCall);
  // City Call, see procedure using Boolean & Button
  //
  if ( mouseX>quitX && mouseX<quitX+quitRectWidth && mouseY>quitY && mouseY<quitY+quitRectHeight ) {
    exit();
  }
  //
  if ( mouseX>apiCallX1 && mouseX<apiCallX1+apiCallRectWidth1 && mouseY>apiCallY1 && mouseY<apiCallY1+apiCallRectHeight1 ) {
    edmTemp = String.valueOf(tempEdmonton);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(edmTemp, titleFont, height, #2C08FF, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Edmonton
    imageURLBuilding(iconEdmonton);
    println(tempEdmonton, edmTemp);
  }
  //
  if (mouseX>apiCallX2 && mouseX<apiCallX2+apiCallRectWidth2 && mouseY>apiCallY2 && mouseY<apiCallY2+apiCallRectHeight2) {
    calgTemp = String.valueOf(tempCalgary);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(calgTemp, titleFont, height, #2C08FF, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Calgary
    imageURLBuilding(iconCalgary);
    println(tempCalgary, calgTemp);
  }
  //
  if (mouseX>apiCallX3 && mouseX<apiCallX3+apiCallRectWidth3 && mouseY>apiCallY3 && mouseY<apiCallY3+apiCallRectHeight3) {
    rdTemp = String.valueOf(tempRedDeer);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(rdTemp, titleFont, height, #2C08FF, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Calgary
    imageURLBuilding(iconRedDeer);
    println(tempRedDeer, rdTemp);
  }
  //
  // City Call, see procedure using Boolean & Button
}
//
