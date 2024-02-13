import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude; 
  double? longitude;
  
dynamic getCurrentLocation()async{
      LocationPermission permission = await Geolocator.requestPermission();
      print(permission);
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
       latitude=position.latitude;
       longitude=position.longitude;
  }
}

 