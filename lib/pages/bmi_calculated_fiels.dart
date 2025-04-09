import 'package:flutter/material.dart';

class BmiCalculatedFiels extends StatelessWidget {
  late String inputHint;
  late String errorToDisplay;
  TextEditingController inputController;

  BmiCalculatedFiels({
    super.key,
    required this.inputHint,
    required this.errorToDisplay,
    required this.inputController
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: inputHint,
        hintStyle: TextStyle(fontFamily: "Poppins"),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color: Colors.brown),
        ),
      ),

      validator: (String? value) {
        if (value != null && value.isNotEmpty) {
          return null;
        } else {
          return errorToDisplay;
        }
      },
    );
  }
}
