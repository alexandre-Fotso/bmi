import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  List<String> officeTODOList = [
    "Meeting 10:30 am",
    "Task Before Lunch",
    "Task after Lunch",
    "Calls from CLient",
    "Prepare report",
    "Task after Lunch",
    "Work my formation in python django",
  ];

  PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          "Custum List",
          style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: ListView(
          children: ListTile.divideTiles(
            context:context,
            color: Colors.deepOrangeAccent,
            tiles: [
              ListTile(
                title: Text(
                  officeTODOList[0],
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.add_call),
                title: Text(
                  officeTODOList[0],
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text(
                  officeTODOList[0],
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ).toList(),
        ),
      ),
    );
  }
}
