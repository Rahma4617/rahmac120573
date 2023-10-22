import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Define your menu items
  final List<Map<String, dynamic>> menuItems = [
    {
      'description': 'Pizza with fish.',
      'image': 'assets/image1.jpg',
    },
    {
      'description': ' Sweet Pizza.',
      'image': 'assets/image2.jpg'
    },
    {
      'description': 'Pizza X6.',
      'image': 'assets/image3.jpg',
    },
    // Add more menu items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Pizza House'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.deepOrangeAccent,
              child: ListTile(
                leading: Image.asset(
                  menuItems[index]['image'],
                  width: 100.0,
                  height: 100.0,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      menuItems[index]['description'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
