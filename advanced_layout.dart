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
        appBar: AppBar(title: const Text("Advanced Layout Example")),
        body: Column(
          children: [
            // Task 1 & 2: Expanded with flex
            Row(
              children: [
                Expanded(
                  // Task 1: red container
                  flex: 1, // Task 2: flex = 1
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2, // Task 2: flex = 2 
                  child: Container(
                    height: 100,
                    color: Colors.green,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Task 3: Replace Row with Column.
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Task 4: Spacer
            Row(
              children: [
                Container(width: 100, height: 100, color: Colors.purple),
                const Spacer(), // pushes containers apart
                Container(width: 100, height: 100, color: Colors.teal),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
