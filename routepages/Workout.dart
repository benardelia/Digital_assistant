import 'package:flutter/material.dart';

class Workout extends StatefulWidget {
  const Workout({ Key? key }) : super(key: key);

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness'),
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