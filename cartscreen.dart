import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<String> selectedItems;

  CartScreen({required this.selectedItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: selectedItems.length,
        itemBuilder: (context, index) {
          final item = selectedItems[index];
          return ListTile(
            title: Text(item),
          );
        },
      ),
    );
  }
}