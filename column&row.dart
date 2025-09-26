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
        appBar: AppBar(title: const Text("Column & Row Example")),
        body: Center(
          child: Column(
            // Task 4: Align all children to the left
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // Task 2 & 3: Replace column with a row 
              Row(
                // Task 3: Distribute children
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50), // Task 1: Add extra star
                  Icon(Icons.star, size: 50), // Task 1: Add extra star
                ],
              ),

              const SizedBox(height: 30),

              // Task 4: Column aligned to left edge
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50),
                  Icon(Icons.star, size: 50), // Task 1: Add extra star
                  Icon(Icons.star, size: 50), // Task 1: Add extra star
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
