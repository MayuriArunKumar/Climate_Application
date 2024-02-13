import 'package:clima/utils/image_resources.dart';
import 'package:clima/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:clima/utilities/constant.dart';

class CityScreen extends StatelessWidget {
  
  String? _cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageResources.cityBackground),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: backIcon
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  style: Colorss.textColor,
                  decoration: kPlaceholderTextStyle,
                  onChanged: (value){
                    _cityName=value;
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context,_cityName);
                },
                child: searchText
              ),
            ],
          ),
        ),
      ),
    );
  }
}