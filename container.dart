import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Container Example")),
        body: Center(
          child: Container(
            // Task 4: Add margin 
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(16.0),

            // Task 1: Change height
            height: 150,
            width: 100,

            // Task 3: Decorations
            decoration: BoxDecoration(
              // Task 1: Change color to redAccent
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(12), // round corners
            ),

            // Task 2: Replace text widget with icon
            child: const Icon(
              Icons.home,
              color: Colors.white, 
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
