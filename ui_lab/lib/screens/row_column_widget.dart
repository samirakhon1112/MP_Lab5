// lib/screens/row_column_widget.dart
import 'package:flutter/material.dart';

/// Task 2: Column & Row examples and practice items
class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column & Row examples')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Sample: Column with 3 icons', style: TextStyle(fontWeight: FontWeight.bold)),
            Column(
              children: const <Widget>[
                Icon(Icons.star, size: 50),
                Icon(Icons.star, size: 50),
                Icon(Icons.star, size: 50),
              ],
            ),
            const Divider(),

            const Text('Practice 1: Add two more children (now 5 icons)', style: TextStyle(fontWeight: FontWeight.bold)),
            Column(
              children: const <Widget>[
                Icon(Icons.star, size: 40),
                Icon(Icons.star, size: 40),
                Icon(Icons.star, size: 40),
                Icon(Icons.star, size: 40),
                Icon(Icons.star, size: 40),
              ],
            ),
            const Divider(),

            const Text('Practice 2 & 3: Change to Row and spaceEvenly', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // distributes children evenly
              children: const [
                Icon(Icons.star, size: 40),
                Icon(Icons.star, size: 40),
                Icon(Icons.star, size: 40),
                Icon(Icons.star, size: 40),
                Icon(Icons.star, size: 40),
              ],
            ),
            const Divider(),

            const Text('Practice 4: Column with crossAxisAlignment.start (left aligned)', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // left aligned
                children: const [
                  Text('Line A'),
                  Text('Line B'),
                  Text('Line C'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
