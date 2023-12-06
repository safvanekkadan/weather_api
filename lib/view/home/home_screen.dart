import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:weatherapp/controller/weather_provider.dart';
import '../widgets/additional_information.dart';

import '../widgets/current_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
 


 
  
 @override
  void initState() {
    super.initState();
    Provider.of<WeatherProvider>(context,listen: false).getData('Calicut'); 
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   elevation: 0,
      //  // backgroundColor: Colors.cyan,
      //   leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      //   title: const Text(
      //     "Weather",
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      //   centerTitle: true,
      // ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage(
              "assets/backgroud.jpg",
          ))
        ),
        
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        child: Consumer<WeatherProvider>(
          builder: (context, value, child) {
            return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Text("WEATHER INFO",
              style:TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight:FontWeight.bold
              )),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onFieldSubmitted: (String place){
                  value. getData(place);
                  },
                  controller:value. weatherController,
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
                      hintText: "Search",hintStyle:TextStyle(color: Colors.white),
                    // fillColor: Colors.deepOrange,
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
                      suffixIcon:value. weatherController.text.isNotEmpty
                          ? IconButton(
                              onPressed: () {
                                value .weatherController.clear();
                                
                              },
                              icon: const Icon(Icons.cancel, color: Colors.red))
                          : null),
                      ),
                    ),
                 const SizedBox(
                  height: 20,
              ),
              if (value.data != null)
                currentWeather(
                  Icons.wb_sunny_rounded,
                  "${value. data!.temp}°",
                  value. weatherController.text.isEmpty
                      ? 'Calicut'
                      : value . weatherController.text,
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
              
              if (value.data != null)
                additionalInformation(
                  "${value. data!.wind}", 
                  "${value. data!.humidity}",
                  "${value. data!.pressure}", 
                  "${value. data!.feels_like}",
                  "${value. data!.clouds}",
                  "${value. data!.sunrise}",
                   "${value. data!.sunset}"
                  ),
                ],
               );
            },
          
        ),
      ),
    );
      }
    
  }

