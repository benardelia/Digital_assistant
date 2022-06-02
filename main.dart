import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'homepage.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('My_schedule');
    runApp(const MaterialApp(   
    home: Homepage(),
    debugShowCheckedModeBanner: false,
  ));
}
