import 'package:flutter/material.dart';
import 'package:shopping/responsive_layout.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveClass(desktop:
    Column(
      children:[
        SizedBox(height: 40,),
        Container(
        height: 60,
        width: 1100,
        color: Colors.blue,
      ),
        SizedBox(height: 20,),
        Container(
          height: 200,
          width: 1100,
          color: Colors.orange,
        ),
        SizedBox(height: 30,width: 30,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 400,
              color: Colors.red,
            ),
            SizedBox(width: 20,),
            Container(
              height: 150,
              width: 400,
              color: Colors.red,
            ),
            SizedBox(width: 20,),
            Container(
              height: 150,
              width: 400,
              color: Colors.red,
            )
          ],
        )
      ]
    ), mobile:
      Column(
          children:[
            SizedBox(height: 40,),
            Container(
              height: 60,
              width: 1100,
              color: Colors.blue,
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 1100,
              color: Colors.orange,
            ),
            SizedBox(height: 30,width: 30,),
            Container(
              height: 150,
              width: 800,
              color: Colors.red,
            )
          ]
      ),
    tablet: Column(
        children:[
          SizedBox(height: 40,),
          Container(
            height: 60,
            width: 1100,
            color: Colors.blue,
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            width: 1100,
            color: Colors.orange,
          ),
          SizedBox(height: 30,width: 30,),
          Container(
            height: 150,
            width: 800,
            color: Colors.red,
          ),
          SizedBox(height: 30,width: 30,),
          Container(
            height: 150,
            width: 800,color: Colors.purple,
          )
        ]
    ),);
  }
}
