import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Units extends StatefulWidget {
  const Units(
      {Key? key,
      required this.inputUnit,
      required this.outputUnit,
      required this.unitList,
      required this.title, required this.converter})
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
                    }
                  },
                  decoration: InputDecoration(
                      hintText: _inputUnit,
                      filled: true,
                      fillColor: Colors.white),
                ),
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
}
