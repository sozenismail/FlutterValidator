import 'package:flutter/material.dart';
import 'package:flutter_loginvalidator/models/customer.dart';

class SecondScreen extends StatelessWidget {
  final String customer;
  const SecondScreen(this.customer);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Center(
        child: Scaffold(
          appBar: AppBar(title: Text("Second Screen"),),
          body: Text(customer),
        ),
      ),
    );
  }
}
