//Global Variable
String URLCurrentAlberta;
String URLForecastAlberta;
String URLCurrentEdmonton;
String URLForecastEdmonton;
String URLCurrentCalgary;
String URLForecastCalgary;
String URLCurrentRedDeer;
String URLForecastRedDeer;

JSONObject jsonCurrentAlberta;
JSONObject jsonForecastAlberta;
JSONObject jsonCurrentEdmonton;
JSONObject jsonForecastEdmonton;
JSONObject jsonCurrentCalgary;
JSONObject jsonForecastCalgary;
JSONObject jsonCurrentRedDeer;
JSONObject jsonForecastRedDeer;

void buildingURL() {
  //Lesson for reading URLs is in String Names
  String domain = "http://api.openweathermap.org"; //http vs https, s for secure
  String baseULR_data = "/data/2.5/"; //opens two folders
  String folderWeather = "weather?"; //opens weather folder
  String folderForecast = "forecast?"; //opens forecast folder
  //
  String baseURL_Current = domain + baseULR_data + folderWeather;
  String baseURL_Forecast = domain + baseULR_data + folderForecast;
  //
  String albertaId = "id=5883102"; //City ID Numbers
  //
  String apiKey = "APPID="; //API Key is PRIVATE so not included here
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  //
  //Concatenate the URL
  URLCurrentAlberta = baseURL_Current+albertaId+and+apiKey+and+mode+and+unitMetric;
  URLForecastAlberta = baseURL_Forecast+albertaId+and+apiKey+and+mode+and+unitMetric;
  //
  //Other IDs for other places
  String edmontonId = "id=5946768";
  String calgaryId = "id=5913490";
  String redDeerId = "id=6118158";
  //CAUTION: easier to use city name, see
  // https://openweathermap.org/api
  // https://openweathermap.org/current#name
  //
  //Other Place URLs
  URLCurrentEdmonton = baseURL_Current+edmontonId+and+apiKey+and+mode+and+unitMetric;
  URLForecastEdmonton = baseURL_Forecast+edmontonId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentCalgary = baseURL_Current+calgaryId+and+apiKey+and+mode+and+unitMetric;
  URLForecastCalgary = baseURL_Forecast+calgaryId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentRedDeer = baseURL_Current+redDeerId+and+apiKey+and+mode+and+unitMetric;
  URLForecastRedDeer = baseURL_Forecast+redDeerId+and+apiKey+and+mode+and+unitMetric;

  //Verification in Console, copy-paste variable output to Chrome and verify data can be seen correctly
  //println(URLCurrentAlberta);
  //println(URLForecastAlberta);
  //println(URLCurrentEdmonton);
  //println(URLForecastEdmonton);
  //println(URLCurrentCalgary);
  //println(URLForecastCalgary);
  //println(URLCurrentRedDeer);
  //println(URLForecastRedDeer);
  //
} //End buildingURL()

void APICall() {
  jsonCurrentAlberta = loadJSONObject(URLCurrentAlberta);
  jsonForecastAlberta = loadJSONObject(URLForecastAlberta);
  jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
  jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
  jsonCurrentCalgary = loadJSONObject(URLCurrentCalgary);
  jsonForecastCalgary = loadJSONObject(URLForecastCalgary);
  jsonCurrentRedDeer = loadJSONObject(URLCurrentRedDeer);
  jsonForecastRedDeer = loadJSONObject(URLForecastRedDeer);
} //End APICall
//Loading JSONObjects with Website API Data
