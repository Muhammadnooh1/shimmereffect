

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> flowers = [
    'Rose',
    'Lily',
    'Sunflower',
    'Tulip',
    'Daisy'
  ];

  final List<String> descriptions = [
    'Red and fragrant flower',
    'White and delicate flower',
    'Bright yellow flower with large petals',
    'Colorful perennial flower',
    'Simple and cheerful flower'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shimmer Effect',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Shimmer Effect'),
        ),
        body: ListView.builder(
          itemCount: flowers.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 25.0,
              ),
              title: Text(
                flowers[index],
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              subtitle: Text(
                descriptions[index],
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
