// lib/screens/product_list_item.dart
import 'package:flutter/material.dart';

/// Task 5 - Challenge 2: Product list item example
class ProductListItemExample extends StatelessWidget {
  const ProductListItemExample({super.key});
  @override
  Widget build(BuildContext context) {
    const imageUrl = 'https://via.placeholder.com/100'; // placeholder image
    return Scaffold(
      appBar: AppBar(title: const Text('Product List Item')),
      body: Center(
        child: Container(
          width: 520,
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.network(imageUrl, fit: BoxFit.cover),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Cool Sneakers', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 6),
                    Text('A brief description of the item that explains why it is awesome.'),
                    SizedBox(height: 8),
                    Text('\$99.99', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.green)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
