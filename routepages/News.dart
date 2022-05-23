
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({ Key? key }) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily news'),
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