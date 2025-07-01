import 'package:flutter/material.dart';

class Page2desktop extends StatefulWidget {
  const Page2desktop({super.key});

  @override
  State<Page2desktop> createState() => _Page2desktopState();
}

class _Page2desktopState extends State<Page2desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('My Service'),

        ],
      ),
    );
  }
}
