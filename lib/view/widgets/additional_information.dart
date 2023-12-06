import 'package:flutter/material.dart';
 TextStyle titleFont = 
 const TextStyle(fontWeight: FontWeight.w600,fontSize: 18);
 TextStyle infoFont =
 const TextStyle(fontWeight: FontWeight.w400,fontSize: 18);
 
 additionalInformation(
   String wind,
   String humidity,
    String pressure,
     String feels_like,
     String clouds,
     String sunrise,
     String sunset,
    ){

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
          SizedBox(  height: 10),
          Text("sunrise",
          style: titleFont,
          ),
          SizedBox(  height: 10),
          Text("sunset",
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
           SizedBox(  height: 10),
          Text("$sunrise",
          style: infoFont,
          ),
           SizedBox(  height: 10),
          Text("$sunset",
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
          SizedBox(  height: 10),
          Text("clouds",
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
            
          
          const SizedBox(height: 10),
          Text("$feels_like",
          style: infoFont,
          ), 
          const SizedBox(height: 10),
          Text("$clouds",
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