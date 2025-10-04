// lib/screens/advanced_layout_widget.dart
import 'package:flutter/material.dart';

/// Task 4: Expanded, flex, Column usage, Spacer examples
class AdvancedLayoutWidget extends StatelessWidget {
  const AdvancedLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Advanced Layout examples')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text('Sample: Row with second Container Expanded'),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(width: 100, height: 100, color: Colors.red),
                Expanded(child: Container(height: 100, color: Colors.green)),
              ],
            ),
            const SizedBox(height: 16),

            const Text('Practice 1: wrap first container in Expanded (both expand equally)'),
            const SizedBox(height: 8),
            Row(
              children: const [
                Expanded(flex: 1, child: SizedBox(height: 80, child: ColoredBox(color: Colors.red))),
                Expanded(flex: 1, child: SizedBox(height: 80, child: ColoredBox(color: Colors.green))),
              ],
            ),
            const SizedBox(height: 16),

            const Text('Practice 2: use flex 1 and flex 2 (green twice as wide)'),
            const SizedBox(height: 8),
            Row(
              children: const [
                Expanded(flex: 1, child: SizedBox(height: 80, child: ColoredBox(color: Colors.red))),
                Expanded(flex: 2, child: SizedBox(height: 80, child: ColoredBox(color: Colors.green))),
              ],
            ),
            const SizedBox(height: 16),

            const Text('Practice 3: replace Row with Column (Expanded fills vertical space)'),
            const SizedBox(height: 8),
            SizedBox(
              height: 220,
              child: Column(
                children: const [
                  Expanded(flex: 1, child: ColoredBox(color: Colors.orange)),
                  Expanded(flex: 2, child: ColoredBox(color: Colors.blue)),
                ],
              ),
            ),
            const SizedBox(height: 16),

            const Text('Practice 4: Spacer to push two containers to opposite ends'),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(width: 80, height: 50, color: Colors.pink),
                const Spacer(),
                Container(width: 80, height: 50, color: Colors.teal),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
