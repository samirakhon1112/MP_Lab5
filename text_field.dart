import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Task 4: TextEditingController
    final TextEditingController _controller = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("TextField Example")),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                // Task 4
                controller: _controller,

                // Task 2: a password field
                obscureText: true,

                // Task 1, 3: Update label and add an icon
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter your password", // Task 1
                  icon: Icon(Icons.lock), // Task 3
                ),
              ),

              const SizedBox(height: 20),

              // Task 4
              ElevatedButton(
                onPressed: () {
                  debugPrint("Entered text: ${_controller.text}");
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
