
import 'package:flutter/material.dart';

class Menstruation extends StatefulWidget {
  const Menstruation({ Key? key }) : super(key: key);

  @override
  State<Menstruation> createState() => _MenstruationState();
}

class _MenstruationState extends State<Menstruation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menstruation circle'),
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