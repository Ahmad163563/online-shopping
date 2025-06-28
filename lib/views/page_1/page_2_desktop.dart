import 'package:flutter/material.dart';

class Page1screen extends StatefulWidget {
  const Page1screen({super.key});

  @override
  State<Page1screen> createState() => _Page1screenState();
}

class _Page1screenState extends State<Page1screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.merge_type_rounded,color: Colors.red,),
            Text('FORSTR',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
