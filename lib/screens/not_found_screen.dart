import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body:SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '404',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'NOT FOUND',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'The response requested could not be found on this server',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal
                  ),
                )
              ],
            ),
          ),
        ),
        )
      );
  }
}