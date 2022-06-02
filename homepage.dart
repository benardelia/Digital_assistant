import 'package:digital_assistant/routepages/Menstrual.dart';
import 'package:digital_assistant/routepages/News.dart';
import 'package:digital_assistant/routepages/Schedule.dart';
import 'package:digital_assistant/routepages/Watering.dart';
import 'package:digital_assistant/routepages/Weather.dart';
import 'package:digital_assistant/routepages/Workout.dart';
import 'package:digital_assistant/routepages/cook.dart';
import 'package:digital_assistant/routepages/unitexchange.dart';
import 'package:digital_assistant/sidebarnavigator.dart';
import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color? appColor = Colors.white;
  @override
  Widget build(BuildContext context) {
   // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColor,
      drawer: const SideNavigator(),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.pink,
            Colors.purple,
          ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
        ),
        backgroundColor: Colors.transparent,
        title: const Text('Home'),
        elevation: 0.0,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    homebuttons('assets/unitsicon.png', 'Convert units', 1),
                    homebuttons('assets/cook.png', 'Learn to cook', 2)
                  ],
                ),
               const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    homebuttons(
                        'assets/menstrual.jpeg', 'Menstrual\n  Control', 3),
                    homebuttons('assets/dailnews.jpeg', 'Daily news', 4)
                  ],
                ),
               const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    homebuttons('assets/weather.jpeg', 'Weather', 5),
                    homebuttons('assets/workout.jpeg', 'Workout', 6)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    homebuttons('assets/watery.png', 'Watering\nReminder', 7),
                    homebuttons('assets/stopwatch.png', 'Stopwatch', 8)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    homebuttons('assets/schedules.png', 'Schedule', 9),
                    homebuttons('assets/budget.png', 'Budget', 10)
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ]),
        ),
      ),
    );
  }

  Widget homebuttons(String image, String name, int index) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      height: 100,
      width: MediaQuery.of(context).size.width / 3,
      child: ElevatedButton(
        onPressed: () {
          switch (index) {
            case 1:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Unitexchange()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cook()));
              break;
            case 3:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Menstruation()));
              break;
            case 4:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const News()));
              break;
            case 5:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Weather()));
              break;
            case 6:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Workout()));
              break;
            case 7:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Watering()));
              break;
            case 9:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Schedule()));
              break;
          }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
                elevation: MaterialStateProperty.all(30)
                ),
                
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Image(
                image: AssetImage(image),
                width: 40,
                height: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                name,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
