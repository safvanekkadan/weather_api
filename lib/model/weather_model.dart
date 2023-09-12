class Weather{
  String?cityName;
  double?temp;
  double?wind;
  double?humidity;
  double? feels_like;
  double?pressure;

  Weather({
    this.cityName,
    this.temp,
    this.wind,
    this.humidity,
    this.feels_like,
    this.pressure
  });
   //parse JSON file
   Weather.fromJson(Map<String,dynamic>json){
    cityName=json["name"];
    temp=json["main"]["temp"];
    wind=json["wind"]["speed"];
    pressure=json["main"]["pressure"];
    humidity=json["main"]["humidity"];
    feels_like=json["main"]["feels_like"];
    
   }
   

}