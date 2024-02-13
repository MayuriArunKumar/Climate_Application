import 'package:clima/provider/weather_provider.dart';
import 'package:clima/utilities/constant.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:provider/provider.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  
 
  @override
  void initState(){
    super.initState();
    getLocationData(); 
  }

  void getLocationData()async{
  //var data= await weatherModel.getLocationWeather();
  await context.read<WeatherProvider>().getLocationWeather();
  Navigator.push(context,MaterialPageRoute(builder: (context){
    return LocationScreen();
  }));
}

  @override
  Widget build(BuildContext context) {  
    
    return const Scaffold(
      body: Center(
        child:loadingIcon
      ),
    );
  }
}