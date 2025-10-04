// lib/screens/container_widget.dart
import 'package:flutter/material.dart';

/// Task 1: Container examples (all practice tasks shown)
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container: examples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Sample: original', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.blue,
              height: 100,
              width: 100,
              child: const Text('Hello!'),
            ),
            const SizedBox(height: 16),

            const Text('Practice 1: color -> redAccent, height -> 150', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.redAccent, // changed color
              height: 150, // changed height
              width: 120,
              child: const Text('Hello!'),
            ),
            const SizedBox(height: 16),

            const Text('Practice 2: Replace Text with Icon', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.green,
              height: 100,
              width: 100,
              child: const Icon(Icons.home, size: 32),
            ),
            const SizedBox(height: 16),

            const Text('Practice 3: Use decoration with rounded corners', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              padding: const EdgeInsets.all(16.0),
              // note: color moved inside BoxDecoration
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(12),
              ),
              height: 100,
              width: 150,
              child: const Center(child: Text('Rounded')),
            ),
            const SizedBox(height: 16),

            const Text('Practice 4: margin vs padding (margin outside container)', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              margin: const EdgeInsets.all(20.0), // margin added
              padding: const EdgeInsets.all(12.0),
              color: Colors.orange,
              child: const Text('Margin outside\nPadding inside', textAlign: TextAlign.center),
            ),

            const SizedBox(height: 30),
            const Text('Observe: margin moves the whole box; padding adds inner space.', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
