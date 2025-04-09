import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  List<String> countriesList = [
    "Cameroun",
    "United State of America",
    "canada",
    "Gabon",
    "Tchad"
    "Cambodia",
    "Comoria",
    "India",
    "Nigeria",
    "kenya",
    "Ethiopian",
  ];

  PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Weird Design List",
          style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: ListView.builder(
          itemCount: countriesList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(
                Icons.person_2,
                color: Colors.deepOrangeAccent,
                ),

              title: Text(
                "Countrie : ${countriesList[index]}",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),

              trailing: Text("$index "),

            );
          },
        ),
      ),
    );
  }
}
