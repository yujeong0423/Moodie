import 'package:flutter/material.dart';

class CustomTextArea extends StatelessWidget {

  final String hint;
  final funvalidator;

  const CustomTextArea({required this.hint, required this.funvalidator});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        maxLines: 16,
        validator: funvalidator,
        decoration: InputDecoration(
          hintText: "Enter $hint",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
