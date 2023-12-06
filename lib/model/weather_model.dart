

class Weather{
  String?cityName;
  double?temp;
  double?wind;
  double?humidity;
  double? feels_like;
  double?pressure;
  double?clouds;
  double? sunrise;
  double?sunset;

  Weather({
    this.cityName,
    this.temp,
    this.wind,
    this.humidity,
    this.feels_like,
    this.pressure,
    this.clouds,
    this.sunrise,
    this.sunset,
    
  });

   Weather.fromJson(Map<String,dynamic>json){
    cityName=json["name"];
    temp=json["main"]["temp"];
    wind=json["wind"]["speed"];
    pressure=json["main"]["pressure"];
    humidity=json["main"]["humidity"];
    feels_like=json["main"]["feels_like"];
    clouds=json["clouds"]["all"];
    sunrise=json["sys"]["sunrise"];
    sunset=json["sys"]["sunset"];
    
    
   }
   

}