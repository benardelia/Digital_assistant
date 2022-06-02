import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:flutter/material.dart';

class Menstruation extends StatefulWidget {
  const Menstruation({Key? key}) : super(key: key);

  @override
  State<Menstruation> createState() => _MenstruationState();
}

class _MenstruationState extends State<Menstruation> {
  List<String> menstrual = [];
  List<String> titles = [];
  getWebData() async {
    
    final url = Uri.parse(
        'https://www.womenshealth.gov/menstrual-cycle/your-menstrual-cycle');
    final responce = await http.get(url);
    dom.Document html = dom.Document.html(responce.body);

    final menstrual = html
        .querySelectorAll(
            'div[class="paragraph paragraph--type--blog-qa paragraph--view-mode--default"] p')
        .map((e) => e.innerHtml.trim())
        .toList();

    final titles = html
        .querySelectorAll(
            'div[class="paragraph paragraph--type--blog-qa paragraph--view-mode--default"] h2')
        .map((element) => element.innerHtml.trim())
        .toList();

    setState(() {
      this.menstrual = menstrual;
      this.titles = titles;
    });
  }

  @override
  void initState() {
    
    super.initState();
    getWebData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menstruation circle'),
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
            Colors.pink,
            Colors.purple,
          ], begin: Alignment.bottomRight, end: Alignment.topLeft))),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              final data = menstrual[index];
              final title = titles[index];
              return menstrual.isNotEmpty && titles.isNotEmpty? ListTile(
                title: Text(title),
                subtitle: Text(data),
              ):const CircularProgressIndicator();
            },
            separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
            itemCount: titles.length));
  }
}
