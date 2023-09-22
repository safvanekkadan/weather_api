import 'package:flutter/material.dart';
import 'package:weatherapp/model/weather_model.dart';
import 'package:weatherapp/service/weather_api_client.dart';

class WeatherProvider extends ChangeNotifier{
   bool isLoaded = false;

  Weather?data;
  
 

 Future<Weather?>getData(String place) async {
  
      data = await WeatherApiClient().getData(place);
   
    notifyListeners();
    return data;
  }
  void changeValue() {
    isLoaded =!isLoaded;
    notifyListeners();
  }

}