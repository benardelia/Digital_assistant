import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Units extends StatefulWidget {
  const Units(
      {Key? key,
      required this.inputUnit,
      required this.outputUnit,
      required this.unitList,
      required this.title,
      required this.converter})
      : super(key: key);

  final String inputUnit;
  final String outputUnit;
  final List unitList;
  final String title;
  final Function() converter;

  @override
  State<Units> createState() => _UnitsState();
}

class _UnitsState extends State<Units> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final TextEditingController _input = TextEditingController();
  final TextEditingController _output = TextEditingController();
  late String _inputUnit = widget.inputUnit;
  late String _outputUnit = widget.outputUnit;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
                title: Text(widget.title),
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
                    value: _inputUnit,
                    items:
                        widget.unitList.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem(
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) => setState(() {
                          _inputUnit = value!;
                        })),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _input,
                  onChanged: (_input) {
                    if (_inputUnit == _outputUnit) {
                      _output.text = (double.parse(_input) * 1).toString();
                    } else if (widget.title == 'Time') {
                      timeConveter(_input);
                    } else if (widget.title == 'Temperature') {
                      tempConverter(_input);
                    } else if (widget.title == 'Length') {
                      print('am length now');
                    } else if (widget.title == 'Area') {
                      print('hello area');
                    }
                  },
                  decoration: InputDecoration(
                      hintText: _inputUnit,
                      filled: true,
                      fillColor: Colors.white),
                ),
                const Icon(Icons.arrow_downward_outlined, color: Colors.white),
                DropdownButton<String>(
                    value: _outputUnit,
                    items:
                        widget.unitList.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem(
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) => setState(() {
                          _outputUnit = value!;
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

  void timeConveter(String _input) {
    if (_inputUnit == 'Second') {
      if (_outputUnit == 'Minute') {
        _output.text = (double.parse(_input) / 60).toString();
      } else if (_outputUnit == 'Millisecond') {
        _output.text = (double.parse(_input) * 1000).toString();
      } else if (_outputUnit == 'Microsecond') {
        _output.text = (double.parse(_input) * 1000000).toString();
      } else if (_outputUnit == 'Nanosecond') {
        _output.text = (double.parse(_input) * 1000000000).toString();
      } else if (_outputUnit == 'Picosecond') {
        _output.text = (double.parse(_input) * 1000000000000).toString();
      } else if (_outputUnit == 'Hour') {
        _output.text = (double.parse(_input) * 1000).toString();
      } else if (_outputUnit == 'Week') {
        _output.text = (double.parse(_input) * 0.0000016534).toString();
      } else if (_outputUnit == 'Month') {
        _output.text = (double.parse(_input) * 3.802570537E-7).toString();
      } else if (_outputUnit == 'Year') {
        _output.text = (double.parse(_input) * 3.168808781E-8).toString();
      } else if (_outputUnit == 'Day') {
        _output.text = (double.parse(_input) / 86400).toString();
      }
      // Minute to other units start

    } else if (_inputUnit == 'Minute') {
      if (_outputUnit == 'Hour') {
        _output.text = (double.parse(_input) * 0.0166666667).toString();
      } else if (_outputUnit == 'Millisecond') {
        _output.text = (double.parse(_input) * 60000).toString();
      } else if (_outputUnit == 'Microsecond') {
        _output.text = (double.parse(_input) * 60000000).toString();
      } else if (_outputUnit == 'Nanosecond') {
        _output.text = (double.parse(_input) * 60000000000).toString();
      } else if (_outputUnit == 'Picosecond') {
        _output.text = (double.parse(_input) * 60000000000000).toString();
      } else if (_outputUnit == 'Week') {
        _output.text = (double.parse(_input) * 0.0000992063).toString();
      } else if (_outputUnit == 'Month') {
        _output.text = (double.parse(_input) * 0.0000228154).toString();
      } else if (_outputUnit == 'Year') {
        _output.text = (double.parse(_input) * 0.0000019013).toString();
      } else if (_outputUnit == 'Day') {
        _output.text = (double.parse(_input) * 0.0006944444).toString();
      } else {
        _output.text = (double.parse(_input) * 60).toString();
      }
    }
  }

  // to be done temperature converter
  void tempConverter(_input) {
    if (_inputUnit == 'Celcius') {
      if (_outputUnit == 'Kelvin') {
        _output.text = (double.parse(_input) + 273).toString();
      } else {
        _output.text = (double.parse(_input) * 1000).toString();
      }
    } else if (_inputUnit == 'Kelvin') {
      if (_outputUnit == 'Celcius') {
        _output.text = (double.parse(_input) - 273).toString();
      } else {
        _output.text = (double.parse(_input) * 1000).toString();
      }
    } else {
      if (_outputUnit == 'Celcius') {
        _output.text = (double.parse(_input) - 273).toString();
      } else {
        _output.text = (double.parse(_input) * 1000).toString();
      }
    }
  }
  // methode to convert length
  void lengthConverter(_input){

  }

  // many methodes followup down here
}
