
import 'package:flutter/material.dart';

class SideNavigator extends StatelessWidget {
  const SideNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.black,
        child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                
            Colors.pink,
            Colors.purple,
          ], begin: Alignment.bottomRight, end: Alignment.topLeft
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                const  SizedBox(
                    height: 20,
                  ),
                 const CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 50.0,
                    ),
                  ),
                  const Divider(
                    height: 30,
                    color: Colors.white,
                  ),
                  drawerItem(Icons.home, 'Home', () => onpressed(context, 0))
                ],
              ),
            ),
          ),
        );
  }

  void onpressed(BuildContext context, int index) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        break;
    }
  }

  Widget drawerItem(IconData icon, String name, Function() action) {
    return InkWell(
      onTap: action,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style:const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
