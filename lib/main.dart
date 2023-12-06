
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/controller/weather_provider.dart';
import 'view/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> WeatherProvider(
      ),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}



