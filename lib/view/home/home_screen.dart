
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/controller/weather_provider.dart';
import '../widgets/additional_information.dart';
import '../../model/weather_model.dart';
import '../../service/weather_api_client.dart';
import '../widgets/current_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
     //call the api in the init state function
   WeatherApiClient client =WeatherApiClient();

  Weather?data;

TextEditingController weatherController= TextEditingController();

    Future<void> getData(String place)async{
      //let's try changing the city name
       data =await client.getCurrentWeather(place);
       Provider.of<WeatherProvider>(context,listen: false).changeValue();
    }
  
 @override
  void initState() {
    super.initState();
    getData('Calicut');
   
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.cyan,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text(
          "Weather",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.cyan,
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        child: Consumer<WeatherProvider>(
          builder: (context, value, child) {
            return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onFieldSubmitted: (String place){
                  getData(place);
                  },
                  controller: weatherController,
                  cursorColor: Colors.black,
                  style: const TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 18),
                      isDense: true,
                      hintText: "Search",
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                      suffixIcon: weatherController.text.isNotEmpty
                          ? IconButton(
                              onPressed: () {
                                weatherController.clear();
                                
                              },
                              icon: const Icon(Icons.cancel, color: Colors.red))
                          : null),
                      ),
                    ),
                 const SizedBox(
                  height: 20,
              ),
              if (data != null)
                currentWeather(
                  Icons.wb_sunny_rounded,
                  "${data!.temp}°",
                  weatherController.text.isEmpty
                      ? 'Calicut'
                      : weatherController.text,
                ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Additional information',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 10.0,
              ),
              
              if (data != null)
                additionalInformation("${data!.wind}", "${data!.humidity}",
                    "${data!.pressure}", "${data!.feels_like}"),
                ],
               );
            },
          
        ),
      ),
    );
      }
    
  }

