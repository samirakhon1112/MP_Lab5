// lib/screens/profile_card.dart
import 'package:flutter/material.dart';

/// Task 5 - Challenge 1: User Profile Card (structure required)
class ProfileCardExample extends StatelessWidget {
  const ProfileCardExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Card')),
      body: Center(
        child: Container(
          width: 360,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const CircleAvatar(child: Text('A')),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('User Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('@username', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text('A short bio about the user goes here. Keep it simple and concise.'),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text('Follow')),
                  ElevatedButton(onPressed: () {}, child: const Text('Message')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
