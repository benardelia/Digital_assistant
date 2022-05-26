import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'listies.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);
 final String _inputTime = 'Second';
  @override
  State<Time> createState() => _TimeState();
}

TextEditingController _input = TextEditingController();
TextEditingController _output = TextEditingController();
String _inputTime = 'Second';
String _outputTime = 'Second';

class _TimeState extends State<Time> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: size.height,
            child: AppBar(
                flexibleSpace: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.pink, Colors.purple],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft))),
                title: const Text('Area'),
                backgroundColor: Colors.transparent,
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                ]),
          ),
          Positioned(
            top: 50,
            bottom: 30,
            left: 20,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                    value: _inputTime,
                    items:
                        Listies().Time.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem(
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) => setState(() {
                          _inputTime = value!;
                        })),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _input,
                  onChanged: (_input) {
                    conveter(_input);
                  },
                  decoration: InputDecoration(
                      hintText: _inputTime,
                      filled: true,
                      fillColor: Colors.white),
                ),
                DropdownButton<String>(
                    value: _outputTime,
                    items:
                        Listies().Time.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem(
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) => setState(() {
                          _outputTime = value!;
                        })),
                TextField(
                  readOnly: true,
                  controller: _output,
                  decoration: InputDecoration(
                      hintText: _output.text,
                      filled: true,
                      fillColor: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void conveter(String _input) {
    if (_inputTime == _outputTime) {
      _output.text = (double.parse(_input) * 1).toString();
      // second to other units start below
    } else if (_inputTime == 'Second') {
      if (_outputTime == 'Minute') {
        _output.text = (double.parse(_input) / 60).toString();
      } else if (_outputTime == 'Millisecond') {
        _output.text = (double.parse(_input) * 1000).toString();
      } else if (_outputTime == 'Microsecond') {
        _output.text = (double.parse(_input) * 1000000).toString();
      } else if (_outputTime == 'Nanosecond') {
        _output.text = (double.parse(_input) * 1000000000).toString();
      } else if (_outputTime == 'Picosecond') {
        _output.text = (double.parse(_input) * 1000000000000).toString();
      } else if (_outputTime == 'Hour') {
        _output.text = (double.parse(_input) * 1000).toString();
      } else if (_outputTime == 'Week') {
        _output.text = (double.parse(_input) * 0.0000016534).toString();
      } else if (_outputTime == 'Month') {
        _output.text = (double.parse(_input) * 3.802570537E-7).toString();
      } else if (_outputTime == 'Year') {
        _output.text = (double.parse(_input) * 3.168808781E-8).toString();
      } else if (_outputTime == 'Day') {
        _output.text = (double.parse(_input) / 86400).toString();
      }
      // Minute to other units start below
    } else if (_inputTime == 'Minute') {
      if (_outputTime == 'Hour') {
        _output.text = (double.parse(_input) * 0.0166666667).toString();
      } else if (_outputTime == 'Millisecond') {
        _output.text = (double.parse(_input) * 60000).toString();
      } else if (_outputTime == 'Microsecond') {
        _output.text = (double.parse(_input) * 60000000).toString();
      } else if (_outputTime == 'Nanosecond') {
        _output.text = (double.parse(_input) * 60000000000).toString();
      } else if (_outputTime == 'Picosecond') {
        _output.text = (double.parse(_input) * 60000000000000).toString();
      } else if (_outputTime == 'Week') {
        _output.text = (double.parse(_input) * 0.0000992063).toString();
      } else if (_outputTime == 'Month') {
        _output.text = (double.parse(_input) * 0.0000228154).toString();
      } else if (_outputTime == 'Year') {
        _output.text = (double.parse(_input) * 0.0000019013).toString();
      } else if (_outputTime == 'Day') {
        _output.text = (double.parse(_input) * 0.0006944444).toString();
      }
    }
  }
}
