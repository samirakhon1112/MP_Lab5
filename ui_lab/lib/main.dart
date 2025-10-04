// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/container_widget.dart';
import 'screens/row_column_widget.dart';
import 'screens/textfield_widget.dart';
import 'screens/advanced_layout_widget.dart';
import 'screens/profile_card.dart';
import 'screens/product_list_item.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Practice Lab',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Practice - Tasks')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          _tile(context, '1. Container widget examples', const ContainerWidget()),
          _tile(context, '2. Column & Row examples', const RowColumnWidget()),
          _tile(context, '3. TextField examples', const TextFieldWidget()),
          _tile(context, '4. Advanced Layout (Expanded/Flex/Spacer)', const AdvancedLayoutWidget()),
          _tile(context, '5. Profile Card (Widget Tree Challenge)', const ProfileCardExample()),
          _tile(context, '6. Product List Item (Widget Tree Challenge)', const ProductListItemExample()),
        ],
      ),
    );
  }

  ListTile _tile(BuildContext ctx, String title, Widget page) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () => Navigator.push(ctx, MaterialPageRoute(builder: (_) => page)),
    );
  }
}
