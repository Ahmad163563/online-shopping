import 'package:flutter/material.dart';
import 'package:speech_bubble/speech_bubble.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        leading: Icon(Icons.menu),
        title: Row(
          children: [
            SizedBox(width: 130,),
            Text('Miso',style: TextStyle(
              color: Colors.black87,
              fontSize: 27,
              fontWeight:   FontWeight.w400
            ),),
            Container(
              margin: EdgeInsets.all(3),
              height: 40,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.elliptical(40, 20),
                bottomRight: Radius.elliptical(30, 20),
                ),
                color: Colors.black
              ),
              child: Center(
                child: Text('whey',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 27
                ),),
              ),
            ),
          ],
        ),
        centerTitle: true,
          actions: [
            Image.asset('assets/amd.jpg',width: 40,height: 40,)
          ],
      ),
      body: Column(

        children: [
          SizedBox(height: 30,),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              width: 383,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              child: Row(
                children: [
                  SizedBox(width: 3,),
                  InkWell(
                      onTap: (){},
                      child: Icon(Icons.search,color: Colors.grey,)),
                  SizedBox(width: 30,),
                  Text('Search any product...',style: TextStyle(
                    color: Colors.grey
                  ),),
                  SizedBox(width: 125,),
                  InkWell(
                      onTap: (){},
                      child: Icon(Icons.mic,color: Colors.grey,)),

                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 30,),
              SizedBox(height: 30,),
              Text('All Featured',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black
              ),),
              SizedBox(width: 140,),
              Container(
                height: 24,
                width: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Text('Sort',style: TextStyle(color: Colors.black),),
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_upward, size: 15,color: Colors.black,),

                    SizedBox(height: 10),

                    Transform.rotate(
                      angle: 3.14,
                      child: Icon(Icons.arrow_upward, size: 15,color: Colors.black,),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8,),
              Container(
                height: 24,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Text('Filter',style: TextStyle(color: Colors.black),),
                    SizedBox(width: 5,),
                    Icon(Icons.filter_alt_outlined, size: 10,color: Colors.black,),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Center(
            child:  SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 87,
                width: 500,
                color: Colors.white,
                child: Row(
                  children: [Column(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/electronic.jpg'),),
                      Text('asdf')
                    ],
                  )],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
