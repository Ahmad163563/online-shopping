import 'package:flutter/material.dart';
import 'package:shopping/views/page_1/main_page%201.dart';
import 'package:shopping/views/page_2/page_2_main.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          Mainpage1(),
            Page2main()
          ],
        ),
      ),
    );
  }
}
