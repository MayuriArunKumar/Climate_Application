import 'package:clima/screens/not_found_screen.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:clima/utilities/constant.dart';
import 'package:clima/services/weather.dart';
import 'package:get/get.dart';


const apikey='2487a0de82bebbe38ec0174bea58d8a0';
const openweatherappURL='https://api.openweathermap.org/data/2.5/weather';

class WeatherProvider extends ChangeNotifier

{
  WeatherModel weatherModel=WeatherModel();


int _temperature = 0;
String _city='';
String _condition='';
String _message='';
String _errormsg='';
String _images='';


int get temperature => _temperature;
String get city => _city;
String get condition=>_condition;
String get message=>_message;
String get errormsg=>_errormsg;
String get images=>_images;


void _getWeatherData(dynamic data)
{
  if(data==404){
    Get.to(NotFoundScreen());
    return;
  }
      else if(data==null){
        _temperature=0;
        _city='';
        _condition=errorCondition;
        _message=errorMessage;
        _errormsg='';
        return;
      }
     var temp=(data)['main']['temp'];
      _temperature=temp.toInt();
      int _condi=(data)['weather'][0]['id'];
      _city=(data)['name'];
      _errormsg='in';
      _condition=weatherModel.getWeatherIcon(_condi);
      _message=weatherModel.getMessage(_temperature);
      _images=weatherModel.getImage(_temperature);
      notifyListeners();
      
    ;

  }
  Future<void> getCityLocation(String city)async{
    
    NetworkHelper networkHelper=NetworkHelper('$openweatherappURL?q=$city&appid=$apikey&units=metric');
    var data =await networkHelper.getData();
    _getWeatherData( data);

  }

    Future<dynamic> getLocationWeather()async{
     
  Location location=Location();
  await location.getCurrentLocation();
  NetworkHelper networkHelper =NetworkHelper('$openweatherappURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apikey&units=metric');
  var data=await networkHelper.getData();
    _getWeatherData( data);

  } 
  }



 









