import 'package:flutter/material.dart';

class GradientScaffoldExample extends StatelessWidget {
  const GradientScaffoldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple], // Gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
            child: Text("Hello, Flutter!",
                style: TextStyle(color: Colors.white, fontSize: 20))),
      ),
    );
  }
}
