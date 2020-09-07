import 'package:flutter/material.dart';

import 'screens/customer_add.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post Islemleri',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Müşteri Form"),
        ),
        body: CustomerAdd(),
      ),
    );
  }
}
