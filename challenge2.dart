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
        appBar: AppBar(title: const Text("Product List Item")),
        body: const Center(
          child: ProductListItem(),
        ),
      ),
    );
  }
}

class ProductListItem extends StatelessWidget {
  const ProductListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Product image
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              "https://via.placeholder.com/100", // placeholder image
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Product Title",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Text(
                  "A brief description of the item...",
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
                SizedBox(height: 6),
                Text(
                  "\$99.99",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
