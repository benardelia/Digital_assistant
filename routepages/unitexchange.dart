import 'package:digital_assistant/helping/area.dart';
import 'package:digital_assistant/helping/legnth.dart';
import 'package:digital_assistant/helping/listies.dart';
import 'package:digital_assistant/helping/time.dart';
import 'package:digital_assistant/helping/units.dart';
import 'package:flutter/material.dart';

class Unitexchange extends StatefulWidget {
  const Unitexchange({Key? key}) : super(key: key);

  @override
  State<Unitexchange> createState() => _UnitexchangeState();
}

class _UnitexchangeState extends State<Unitexchange> {
  String currentUnit = 'Length';
  String unitType = 'Meter';
  List currentConvert = Listies().Length;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  changeList();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //  changeList(currentUnit);
    return Scaffold(
        body: Stack(children: [
      Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: size.height * 1 / 3,
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.pink,
              Colors.purple,
            ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
            child: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text('Exchange units'),
              elevation: 0.0,
            ),
          )),
      Positioned(
        top: size.height * 1 / 3,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              unitsButtons('Length', Icons.social_distance, 1),
              unitsButtons('Weight', Icons.monitor_weight, 2),
              unitsButtons('Area', Icons.area_chart_sharp, 3),
              unitsButtons('Volume', Icons.cyclone_outlined, 4),
              unitsButtons('Temperature', Icons.fire_hydrant, 5),
              unitsButtons('Time', Icons.timelapse, 6)
            ],
          ),
        ),
      )
    ]));
  }

  Widget unitsButtons(String name, IconData icon, int index) {
    return ElevatedButton(
      onPressed: () {
        switch (index) {
          case 1:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Length()));
            break;
           case 2:
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Units(inputUnit: 'Gram', outputUnit: 'Gram', unitList: Listies().Weight, title: 'Weight',)));
            break;
          case 3:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Area()));
            break;
          case 4:
              Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  Units(inputUnit: 'Cubic Meter', outputUnit: 'Cubic Meter', unitList: Listies().Volume, title: 'Volume')));
            break;
           case 5:
              Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  Units(inputUnit: 'Celcius', outputUnit: 'Celcius', unitList: Listies().Temperature, title: 'Temperature')));
            break;
          case 6:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Time()));
            break;
        }
      },
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(20),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          fixedSize: MaterialStateProperty.all(
              Size.fromWidth(MediaQuery.of(context).size.width) / 1.25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: const TextStyle(color: Colors.black),
          ),
          Icon(
            icon,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
