import 'package:clima/provider/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create : (_) => WeatherProvider()
      )
      ],
      child: GetMaterialApp(
        theme: ThemeData.dark(),
        home: LoadingScreen(),
      ),
    );
  }
}


