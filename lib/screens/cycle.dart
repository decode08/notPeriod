import 'package:flutter/material.dart';
class Cycle extends StatefulWidget {
  const Cycle({super.key});

  @override
  State<Cycle> createState() => _CycleState();
}

class _CycleState extends State<Cycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Cycle'),
      ),
    );
  }
}