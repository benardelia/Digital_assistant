import 'package:flutter/material.dart';

class Weather extends StatefulWidget {
  const Weather({ Key? key }) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.pink,
            Colors.purple,]
          , begin: Alignment.bottomRight, end: Alignment.topLeft)
          )
        ),
      ),
    
      
    );
  }
}