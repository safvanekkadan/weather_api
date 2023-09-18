import 'package:flutter/material.dart';

class WeatherProvider extends ChangeNotifier{
   bool isLoaded = false;
getCurrentWeather(){}

  void changeValue() {
    isLoaded =!isLoaded;
    notifyListeners();
  }

}