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
      backgroundColor: Colors.black,
      body:  SingleChildScrollView(
        child: Column(
          children:[
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 100,),
                Icon(Icons.merge_type_rounded,color: Colors.red,),
                SizedBox(width: 10,),
                Text('FORSTR',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(width: 180,),
                Text('HOME',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white),),
                SizedBox(width: 50,),
                Text('SERVICE',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white),),
                SizedBox(width: 50,),
                Text('PORTFOLIO',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white),),
                SizedBox(width: 50,),
                Text('RESUME',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white),),
                SizedBox(width: 50,),
                Text('CONTACT',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white),),
                SizedBox(width: 150,),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(),
                    color: Colors.red
                  ),
                  child: Center(child: Text('DOWNLOAD CV',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),)),
                ),
        
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 100,),
                Text('Hello, ',style:  TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontSize: 50),),
                SizedBox(width: 7,),
                Text('I^m',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.red,fontSize: 50),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 100,),
                Text('Ahmad',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 100),),
                SizedBox(width: 30,),
                Text('Yar',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 100)),
                SizedBox(width: 220,),
                Container(height:200,width: 430,child: Image.asset('assets/click in lake.jpg'),)
              ],
            ),
            SizedBox(height: 7,),
            Row(
              children: [
                SizedBox(width: 100,),
                Text('APP Designer And APP Developer ',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontSize: 50),)
              ],
            ),
            SizedBox(height: 3,),
            Row(
              children: [
                SizedBox(width: 95,),
                Text('I am a passionate and results-driven Flutter Developer with a strong focus on building high-performance, responsive, \n and visually appealing cross-platform mobile applications.\n With a solid understanding of Dart and Flutter’s widget-based architect'
                    'ure, I specialize in crafting clean UI designs,\n implementing efficient state management, and o'
                    'ptimizing performance across Android, web, and deskt'
                    'op platforms.',style: TextStyle(color: Colors.white,fontSize: 20),)
              ],
            ),
              SizedBox(height: 23,),
              Row(children:[
                SizedBox(width: 95,),
                Text(''
                'FIND ME ON',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)]),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 80,),
                    Container(height: 20,width: 50,child:Image.asset('assets/fb.jpg'),),
                    Container(height: 20,width: 50,child:Image.asset('assets/twitter.png'),),
                    Container(height: 20,width: 50,child:Image.asset('assets/linkdein.png'),),
                    Container(height: 20,width: 50,child:Image.asset('assets/utube.png'),)
                  ],
                )        
            
            ]
        ),
      ),
      );

  }
}
