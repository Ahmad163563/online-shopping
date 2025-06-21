import 'package:flutter/material.dart';
import 'package:shopping/HomeScreen/Home_Page.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/shop.png'), // apni image ka path
                fit: BoxFit.cover, // cover se image perfect fit hoti hai
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(child: Center(
            child: Column(
              children: [
                Text('Online Shopping\n Sales Product',style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                }, child: Container(
                  height: 48,
                  width: 219,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 70,),
                      Text('Lets Go',style: TextStyle(color: Colors.white),),
                        SizedBox(width: 32,),
                        Icon(Icons.arrow_forward,color: Colors.white,)
                    ],
                  ),
                ))
              ],
            ),
          ))
            ]
      )
     );
  }
}
 