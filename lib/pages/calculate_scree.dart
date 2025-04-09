import 'package:bmiapp/pages/bmi_calculated_fiels.dart';
import 'package:flutter/material.dart';

class CalculateScree extends StatefulWidget {
  const CalculateScree({super.key});

  @override
  State<CalculateScree> createState() => _CalculateScreeState();
}

class _CalculateScreeState extends State<CalculateScree> {
  final GlobalKey<FormState> _formkey = GlobalKey();

  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double bmiIndex = 0.0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'BMI App',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BmiCalculatedFiels(
                  inputController: weightController,
                  inputHint: "Enter body Weight in (kg)",
                  errorToDisplay: "Invalid input for weight",
                ),

                SizedBox(height: 20),

                BmiCalculatedFiels(
                  inputController: heightController,
                  inputHint: "Enter body Height in (m)",
                  errorToDisplay: "Invalid input for Height",
                ),

                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentContext != null &&
                        _formkey.currentState!.validate()) {
                      print("Weight input ${weightController.text}");
                      print("Height input ${heightController.text}");
                      double weightInKg = double.parse(weightController.text);
                      double heightInKg = double.parse(heightController.text);
                      double bmiCalc = weightInKg / (heightInKg * heightInKg);
                      setState(() {
                        bmiIndex = bmiCalc;
                      });
                      print("BMI index ${bmiIndex.toStringAsFixed(2)}");
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.deepOrange),
                  ),
                  child: Text(
                    'Calculate BMI',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 80,
                  alignment: Alignment.center,
                
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Colors.deepOrangeAccent
                    ),
                  
                  ),
                  child: Text("BMI Index ${bmiIndex.toStringAsFixed(2)}",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
