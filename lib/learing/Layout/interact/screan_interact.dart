import 'package:flutter/material.dart';

import './test_response.dart';

class Product {
  const Product({required this.name});
  final String name;
}

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: const [
          Counter(),
        ],
      ),
    );
  }
}
