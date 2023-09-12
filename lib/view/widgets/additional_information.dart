import 'package:flutter/material.dart';
 TextStyle titleFont = 
 const TextStyle(fontWeight: FontWeight.w600,fontSize: 18);
 TextStyle infoFont =
 const TextStyle(fontWeight: FontWeight.w400,fontSize: 18);
 
 additionalInformation(
   String wind,
   String humidity,
    String pressure,
     String feels_like){

  return Container(
  width:  double.infinity,
  padding:const   EdgeInsets.all(10),
  child:  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Wind",
              style:titleFont ),
            
          
          SizedBox(  height: 10),
          Text("pressure",
          style: titleFont,
          ), 
        ],
       ),

       Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$wind",
              style:infoFont ),
            
          
          SizedBox(  height: 10),
          Text("$pressure",
          style: infoFont,
          ), 
        ],
        ),
         Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("humidity",
              style:titleFont ),
            
          
          SizedBox(  height: 10),
          Text("feels_like",
          style: titleFont,
          ), 
         ],
       ),
         Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$humidity",
              style:infoFont ),
            
          
          SizedBox(  height: 10),
          Text("$feels_like",
          style: infoFont,
          ), 
         ],
       ),
      ],
   ) ,
    ],
  )
);
}