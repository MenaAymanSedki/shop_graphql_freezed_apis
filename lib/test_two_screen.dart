import 'package:flutter/material.dart';

class TestTwoScreen extends StatelessWidget {
  const TestTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: const Text('Two'),
      ),
    );
  }
}