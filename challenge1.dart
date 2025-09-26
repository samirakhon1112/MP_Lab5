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
        appBar: AppBar(title: const Text("User Profile Card")),
        body: const Center(
          child: UserProfileCard(),
        ),
      ),
    );
  }
}

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200], // light grey background
        borderRadius: BorderRadius.circular(12), // rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row with avatar + username
          Row(
            children: [
              const CircleAvatar(
                radius: 24,
                child: Text("A"), // User initial
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "User Name",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text("@username", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Bio
          const Text(
            "A short bio about the user goes here...",
            style: TextStyle(fontSize: 14),
          ),

          const SizedBox(height: 16),

          // Buttons row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Follow")),
              ElevatedButton(onPressed: () {}, child: const Text("Message")),
            ],
          ),
        ],
      ),
    );
  }
}
