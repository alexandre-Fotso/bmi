import 'package:bmiapp/pages/calculate_scree.dart';
import 'package:bmiapp/pageviews/page_view_demonstratration_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset('assets/images/ch.jpg'),
                // Text(
                //   'BMI App',
                //   style:TextStyle(
                //   fontFamily: 'Poppins',
                //   fontWeight: FontWeight.bold,
                //   color: Colors.deepOrangeAccent
                // )
                // ),
              ],
            ),

            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculateScree()),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.deepOrangeAccent,
                ),
              ),

              child: Text(
                'Start BMI Calculator',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageViewDemonstratrationScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black)
              ),
              child: Text(
                'Start Page Views', 
                style: TextStyle(color:Colors.white)
                )
            ),
          ],
        ),
      ),
    );
  }
}
