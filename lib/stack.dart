import 'package:flutter/material.dart';

class Staclclass extends StatefulWidget {
  const Staclclass({super.key});

  @override
  State<Staclclass> createState() => _StaclclassState();
}

class _StaclclassState extends State<Staclclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey[300],
            width: double.infinity,
            height: double.infinity,

          ),
          Positioned(

            top: 0.1,     // Distance from top
            right: 0,   // Distance from right
            child: Image.asset())
        ],
      ),
    );
  }
}
