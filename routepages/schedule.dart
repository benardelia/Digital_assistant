import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  Color? mainColor = Colors.pink[500];
  final scheduleList = {};
  DateTime selectedDate = DateTime.now();
  String Date = "none";
  final TextEditingController _headingController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final listBox = Hive.box('My_schedule'); //instance of hivebox
  List myKeys = [];
  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.pink,
            Colors.purple,
          ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
        ),
        title: const Text('Schedule'),
      ),
      body: ListView.builder(
        itemCount: listBox.keys.length,
        itemBuilder: (context, index) => Card(
            child: ListTile(
          title: Text(scheduleList[myKeys[index]][0]),
          subtitle: Text(scheduleList[myKeys[index]][1]),
          trailing: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(scheduleList[myKeys[index]][2]),
                IconButton(
                    onPressed: () {
                      setState(() {
                        deleteData(myKeys[index]);
                        loadData();
                      });
                    },
                    icon: const Icon(Icons.delete)),
              ],
            ),
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          popUpdialogue(context);
        }),
        child: const Icon(Icons.add),
        isExtended: true,
        backgroundColor: Colors.pink[500],
      ),
    );
  }

  //Date widget in schedule
  selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2030));

    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
        Date =
            "${selectedDate.day} / ${selectedDate.month} / ${selectedDate.year}";
      });
    }
  }

  //Pop dialog to the schedule module
  popUpdialogue(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Add Schedule'),
              content: Container(
                height: 250,
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _headingController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Heading required to complete add new schedule';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                              labelText: 'Heading',
                              labelStyle: TextStyle(fontSize: 20)),
                        ),
                        TextFormField(
                          controller: _descriptionController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Heading required to complete add new schedule';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                              labelText: 'Schedule Description',
                              labelStyle: TextStyle(fontSize: 20)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              selectDate(context);
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(mainColor)),
                            child: const Text(
                              'Select Date',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      setState(() {
                        addData();
                        _descriptionController.clear();
                        _headingController.clear();
                        Navigator.of(context).pop(context);
                      });
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(mainColor)),
                  child:
                      const Text('Add', style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(mainColor)),
                  child: const Text('Cancel',
                      style: TextStyle(color: Colors.white)),
                )
              ],
            ));
  }

  void loadData() {
    final keys = listBox.keys.toList();
    final values = listBox.values.toList();
    myKeys = keys;
    for (int i = 0; i < keys.length; i++) {
      scheduleList[keys[i]] = values[i];
    }
  }

  void deleteData(int index) async {
    await listBox.delete(index);
  }

  void addData() async {
    await listBox
        .add([_headingController.text, _descriptionController.text, Date]);
    setState(() {
      loadData();
    });
  }
}
