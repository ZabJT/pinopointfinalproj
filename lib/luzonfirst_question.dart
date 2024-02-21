import 'package:flutter/material.dart';

class LuzonFirstQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/categorybg.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        // Add your widgets for the second redirect page
      ),
    );
  }
}
