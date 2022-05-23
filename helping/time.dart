import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'listies.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

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
                    _output.text = (double.parse(_input) * 20).toString();
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
}
