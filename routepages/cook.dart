import 'package:flutter/material.dart';

class Cook extends StatefulWidget {
  const Cook({ Key? key }) : super(key: key);

  @override
  State<Cook> createState() => _CookState();
}

class _CookState extends State<Cook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn to cook'),
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