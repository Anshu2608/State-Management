import 'package:flutter/material.dart';
import 'package:state_management/cartscreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item  5',
  ];
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item),
            trailing: Icon(
              selectedItems.contains(item) ? Icons.check_circle : Icons.check_circle_outline,
              color: selectedItems.contains(item) ? Colors.green : null,
            ),
            onTap: () {
              _onItemTap(item);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(selectedItems: selectedItems),
            ),
          );
        },

        child: Icon(Icons.shopping_cart),
      ),
    );
  }

  void _onItemTap(String item) {
    setState(() {
      if (selectedItems.contains(item)) {
        selectedItems.remove(item);
      } else {
        selectedItems.add(item);
      }
    });
  }
}

