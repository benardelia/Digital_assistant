import 'package:flutter/material.dart';

class Watering extends StatefulWidget {
  const Watering({ Key? key }) : super(key: key);

  @override
  State<Watering> createState() => _WateringState();
}

class _WateringState extends State<Watering> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule Watering'),
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