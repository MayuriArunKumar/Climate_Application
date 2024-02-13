import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kPlaceholderTextStyle=InputDecoration(
                    icon:Icon(Icons.location_city),
                    iconColor: Colors.white,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter City Name',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    )

                  );


const loadingIcon=SpinKitDoubleBounce( size: 50.0,
        color: Colors.white,
        ) ; 
const backIcon= Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  );
const nearIcon=  Icon(
                      Icons.near_me,
                      size: 50.0,
                    );
const cityIcon=  Icon(
                      Icons.location_city,
                      size: 50.0,
                    );  


const String errorMessage='Unable to fetch Data from this location';       
const String errorCondition='Error'; 


const searchText= Text(
                  'Get Weather',
                  style: kButtonTextStyle,
                );
    
