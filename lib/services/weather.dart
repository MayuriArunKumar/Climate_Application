import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apikey='2487a0de82bebbe38ec0174bea58d8a0';
const openweatherappURL='https://api.openweathermap.org/data/2.5/weather';



class WeatherModel {

  

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  String getImage(int temp){
    if(temp>=25){
      return 'grassland.jpeg';
    }else if(temp>=5){
      return 'location_background.jpg';
    }else{
      return 'snow.jpg';
    }
  }
}