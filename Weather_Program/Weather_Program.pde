// Open Weather Map App
// Global Variables
//
void setup() {
  size(1200, 700);
  //Gemoetry
  //Population
  //DIV rect()
  buildingURL();
  APICall();
  unwrapToVariables(); //might combine with APICall
}
//
void draw() {
  // City Call, see procedure using Boolean & Button
  // Choice of Three Cities: Edmonton, Calgary, Red Deer
  }
//
void keyPressed() {
  APICall();
  unwrapToVariables(); //might combine with APICall
  println(apiCurrentDateCall); //To verify wrapping is current
} //End keyPressed
//
void mousePressed() {
  APICall();
  unwrapToVariables(); //might combine with APICall
  println(apiCurrentDateCall); //To verify wrapping is current
  // City Call, see procedure using Boolean & Button
}
//
//End MAIN Program
