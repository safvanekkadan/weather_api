import 'package:flutter/material.dart';

 currentWeather(IconData icon,String temp, String location){
return Center(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: Colors.amber,
        size: 30,
      ),
      const SizedBox(
        height: 10.0,
      ),
      Text("$temp",
      style:const  TextStyle(fontSize: 43
      ),),
      SizedBox(
        height: 10.0,
      ),
      Text("$location",
      style: TextStyle(
        fontSize: 19,
        color: Colors.orangeAccent
      ),)
    ],
  ),
);
}