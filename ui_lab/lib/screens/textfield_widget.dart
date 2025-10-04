// lib/screens/textfield_widget.dart
import 'package:flutter/material.dart';

/// Task 3: TextField examples (label change, obscureText, icon, controller)
class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController _controller = TextEditingController();
  String _current = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField examples')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text('Sample: basic TextField with label'),
            const SizedBox(height: 6),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
              ),
            ),
            const SizedBox(height: 16),

            const Text('Practice 1 & 2: password field'),
            const SizedBox(height: 6),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your password', // changed label
              ),
              obscureText: true, // hide input
            ),
            const SizedBox(height: 16),

            const Text('Practice 3: icon inside decoration'),
            const SizedBox(height: 6),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'With icon',
                icon: Icon(Icons.person), // icon in the decoration
              ),
            ),
            const SizedBox(height: 16),

            const Text('Practice 4: TextEditingController to read value'),
            const SizedBox(height: 6),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Type here',
              ),
              onChanged: (v) => setState(() => _current = v),
            ),
            const SizedBox(height: 8),
            Text('Controller value: $_current'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) => AlertDialog(content: Text('Controller text: ${_controller.text}')),
              ),
              child: const Text('Show controller value'),
            ),
          ],
        ),
      ),
    );
  }
}
