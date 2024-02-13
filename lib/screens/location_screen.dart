import 'package:clima/provider/weather_provider.dart';
import 'package:clima/screens/city_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/utilities/constant.dart';
import 'package:clima/services/weather.dart';
import 'package:provider/provider.dart';

class LocationScreen extends StatefulWidget {


  @override
  _LocationScreenState createState() => _LocationScreenState();

  
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weatherModel=WeatherModel();
  

 


  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getLocationWeather();
  }

  

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, WeatherProvider weatherProvider,_)
      => Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:  AssetImage('images/${weatherProvider.images}'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.8), BlendMode.dstATop),
            ),
          ),
          constraints: const BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextButton(
                      onPressed: ()async {
                        await weatherProvider.getLocationWeather();
                        
                      },
                      child:nearIcon
                    ),
                    TextButton(
                      onPressed: () async{
                        var typedName=await Navigator.push(context, MaterialPageRoute(builder: (context){
                          return CityScreen();
                        }));
                        if(typedName != null){
                          await weatherProvider.getCityLocation(typedName);
                          
                        }
                      },
                      child:cityIcon
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '${weatherProvider.temperature}°',
                        style: kTempTextStyle,
                      ),
                      Text(
                        weatherProvider.condition,
                        style: kConditionTextStyle,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    "${weatherProvider.message} ${weatherProvider.errormsg} ${weatherProvider.city}",
                    textAlign: TextAlign.right,
                    style: kMessageTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}