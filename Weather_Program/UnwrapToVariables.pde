//UnwrapToVariables
/* Code to Copy, use println() to verify
 - When validating data in JSON Lint
 - Choose which variables you need, create as Global Variables
 - build a generic unwrapping
 - build specfic unwrappings to Global Variables
 
 Note: use APICall() Variables here, for example jsonCurrentEdmonton
 Caution: variables should be a mix of global and local variables
 
 JSONArray weather = jsonObject-Variable.getJSONArray("weather"); //Unwrapping
 
 JSONObject all = weather.getJSONObject(0); //Unwrap {}
 String mainWeather = all.getString("main");
 String description = all.getString("description");
 String icon = all.getString("icon");
 
 JSONObject main = jsonObject-Variable.getJSONObject("main"); //Unwrap {}
 float temp = main.getFloat("temp");
 float tempMin = main.getFloat("temp_min");
 float tempMax = main.getFloat("temp_max");
 
 int apiCallTime = jsonObject-Variable.getInt("dt");
 
 JSONObject sys = jsonObject-Variable.getJSONObject("sys"); //Unwrap {}
 String country = sys.getString("country");
 int sunrise = sys.getInt("sunrise");
 int sunset = sys.getInt("sunset");
 
 String name = jsonObject-Variable.getString("name");
 
 */

import java.text.ParseException;  
import java.text.SimpleDateFormat;  
import java.util.Date;  //Date Conversation, UNIX Time Stamp from Jan 1, 1970
import java.util.Locale;  

//Global Variables
String mainWeatherEdmonton, descriptionEdmonton, iconEdmonton, countryEdmonton, nameEdmonton;
float tempEdmonton, tempMinEdmonton, tempMaxEdmonton;
int sunriseEdmonton, sunsetEdmonton;
Date apiCurrentDateCall;

String mainWeatherCalgary, descriptionCalgary, iconCalgary, countryCalgary, nameCalgary;
float tempCalgary, tempMinCalgary, tempMaxCalgary;
int apiCallTimeCalgary, sunriseCalgary, sunsetCalgary;

String mainWeatherRedDeer, descriptionRedDeer, iconRedDeer, countryRedDeer, nameRedDeer;
float tempRedDeer, tempMinRedDeer, tempMaxRedDeer;
int apiCallTimeRedDeer, sunriseRedDeer, sunsetRedDeer;

void inspectVaraibles() {
  println("Main Program, mouse pressed\t\t", apiCurrentDateCall); //To verify wrapping is current
  //
  println("Place called", nameEdmonton);
  println("Conuntry Verification", countryEdmonton);
  println("Sunrise", sunriseEdmonton);
  println("Sunset", sunsetEdmonton);
  println("Word Description", mainWeatherEdmonton);
  println("Phrase Description", descriptionEdmonton);
  println("Weather ICON", iconEdmonton);
  println("Current Temperature", tempEdmonton);
  println("Daily Max Temp", tempMaxEdmonton);
  println("Daily Min Temp", tempMinEdmonton);
}//End Inspect Variables

/* Note: the actual Weather Icon Code sent depends on which lcoation button is pressed
- example uses Edmonton
*/
void imageURLBuilding(String icon) {
  String baseURL = "https://openweathermap.org";
  String forwardSlash = "/";
  String imgFolder = "img";
  String weatherIconFolder = "wn";
  String at = "@";
  String twiceSize = "2x"; //ICONS twice size scale better than 1x
  String fileExtension = ".png";
  //
  String imageURL = baseURL + forwardSlash + imgFolder + forwardSlash + weatherIconFolder + forwardSlash + icon + at + twiceSize + fileExtension;
  //
  println(imageURL); //Paste into Browser to Verify
  //
  PImage weatherImage = loadImage (imageURL);
  image(weatherImage, currentIconX, currentIconY, currentIconRectWidth, currentIconRectHeight);
  //CAUTION: this does not use rect() & image centering from App Engine
  //These features must be used for full marks
  //
} //End image URL Building

void unwrapToVariables() {
  currentEdmonton();
  currentCalgary();
  currentRedDeer();
  //
  //inspectVaraibles();
  //imageURLBuilding(iconEdmonton); //testing only
}

Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000); //convert from milliseconds
  return dateHuman;
}

void currentEdmonton() {
  JSONArray weatherEdmonton = jsonCurrentEdmonton.getJSONArray("weather"); //Unwrapping

  JSONObject allEdmonton = weatherEdmonton.getJSONObject(0); //Unwrap {}
  mainWeatherEdmonton = allEdmonton.getString("main");
  descriptionEdmonton = allEdmonton.getString("description");
  iconEdmonton = allEdmonton.getString("icon");

  JSONObject mainEdmonton = jsonCurrentEdmonton.getJSONObject("main"); //Unwrap {}
  tempEdmonton = mainEdmonton.getFloat("temp");
  tempMinEdmonton = mainEdmonton.getFloat("temp_min");
  tempMaxEdmonton = mainEdmonton.getFloat("temp_max");

  long apiCallTimeEdmonton = jsonCurrentEdmonton.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = humanDate(apiCallTimeEdmonton);

  JSONObject sysEdmonton = jsonCurrentEdmonton.getJSONObject("sys"); //Unwrap {}
  countryEdmonton = sysEdmonton.getString("country");
  sunriseEdmonton = sysEdmonton.getInt("sunrise");
  sunsetEdmonton = sysEdmonton.getInt("sunset");

  nameEdmonton = jsonCurrentEdmonton.getString("name");
}

void currentCalgary() {
  JSONArray weatherCalgary = jsonCurrentCalgary.getJSONArray("weather"); //Unwrapping

  JSONObject allCalgary = weatherCalgary.getJSONObject(0); //Unwrap {}
  mainWeatherCalgary = allCalgary.getString("main");
  descriptionCalgary = allCalgary.getString("description");
  iconCalgary = allCalgary.getString("icon");

  JSONObject mainCalgary = jsonCurrentCalgary.getJSONObject("main"); //Unwrap {}
  tempCalgary = mainCalgary.getFloat("temp");
  tempMinCalgary = mainCalgary.getFloat("temp_min");
  tempMaxCalgary = mainCalgary.getFloat("temp_max");

  apiCallTimeCalgary = jsonCurrentCalgary.getInt("dt");

  JSONObject sysCalgary = jsonCurrentCalgary.getJSONObject("sys"); //Unwrap {}
  countryCalgary = sysCalgary.getString("country");
  sunriseCalgary = sysCalgary.getInt("sunrise");
  sunsetCalgary = sysCalgary.getInt("sunset");

  nameCalgary = jsonCurrentCalgary.getString("name");
}

void currentRedDeer() {
  JSONArray weatherRedDeer = jsonCurrentRedDeer.getJSONArray("weather"); //Unwrapping

  JSONObject allRedDeer = weatherRedDeer.getJSONObject(0); //Unwrap {}
  mainWeatherRedDeer = allRedDeer.getString("main");
  descriptionRedDeer = allRedDeer.getString("description");
  iconRedDeer = allRedDeer.getString("icon");

  JSONObject mainRedDeer = jsonCurrentRedDeer.getJSONObject("main"); //Unwrap {}
  tempRedDeer = mainRedDeer.getFloat("temp");
  tempMinRedDeer = mainRedDeer.getFloat("temp_min");
  tempMaxRedDeer = mainRedDeer.getFloat("temp_max");

  apiCallTimeRedDeer = jsonCurrentRedDeer.getInt("dt");

  JSONObject sysRedDeer = jsonCurrentRedDeer.getJSONObject("sys"); //Unwrap {}
  countryRedDeer = sysRedDeer.getString("country");
  sunriseRedDeer = sysRedDeer.getInt("sunrise");
  sunsetRedDeer = sysRedDeer.getInt("sunset");

  nameRedDeer = jsonCurrentRedDeer.getString("name");
}
//
