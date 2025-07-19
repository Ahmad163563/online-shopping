import 'package:flutter/material.dart';
import 'package:shopping/controller/text_component/text_component.dart';
import 'package:shopping/views/page_1/page_1_desktop.dart';

class Page1Mobile extends StatelessWidget {
  const Page1Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
          Padding(padding: EdgeInsets.symmetric(
            horizontal: 5, vertical: 20
          ),
          child: Row(
            children: [
              CustomText(label: 'FORSTR', size: TextSize.small, weight: FontWeight.bold,color: Colors.red,),
           Row(
             children: [
               SizedBox(width: 12,),
               CustomText(label: 'HOME', size: TextSize.small, weight: FontWeight.w300,color: Colors.white,),
               SizedBox(width: 6,),
               CustomText(label: 'SERVICES', size: TextSize.small, weight: FontWeight.w300,color: Colors.white,),
               SizedBox(width: 6,),
               CustomText(label: 'PORTFOLIO', size: TextSize.small, weight: FontWeight.w300,color: Colors.white,),
               SizedBox(width: 6,),
               CustomText(label: 'RESUME', size: TextSize.small, weight: FontWeight.w300,color: Colors.white,),
               SizedBox(width: 6,),
               CustomText(label: 'CONTACT', size: TextSize.small, weight: FontWeight.w300,color: Colors.white,),
             ],
           )
            ],
          ),
          ),
            SizedBox(height: 30,),
            Expanded(
                flex: 2,
                child: Padding(
                    padding: EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomText(label: "Hello I'm", size: TextSize.medium, weight: FontWeight.w300,color: Colors.white,),
                        ],
                      ),
                      SizedBox(height: 13),
                      Row(
                        children: [
                          CustomText(label: 'Kthan Foster', size: TextSize.extralarge, weight: FontWeight.bold,color: Colors.white,),
                        ],
                      ),
                      SizedBox(height: 13),
                      Row(
                        children: [
                          CustomText(label: 'Web Designer And Web Developer', size: TextSize.medium, weight: FontWeight.w500,color: Colors.grey,),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          CustomText(label: "Lorem ipsum dolor sit amet,\n"
                              " consectetur adipiscing elit\n. "
                              "Massa porttitor pretium\n"
                              "fusce venenatis. Tempus egostes\n sit ac aliquet. Gravida\n fermentum quis ut\n"
                              "pellentus queporta facios\n aliquet. Sed torpur sendis", size: TextSize.small, weight: FontWeight.w100,color: Colors.white60,),
                          SizedBox(width: 30,),
                          Image.asset(
                            'assets/cartoon.jpg',height: 140,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          CustomText(label: 'Find me on', size: TextSize.medium, weight: FontWeight.w400,color: Colors.white,),
                        ],
                      ),
                      SizedBox(height: 34),
                      Row(
                        children:[
                          Container(
                            height: 35,
                            width: 35,
                            color: Colors.black,
                            child: Image.asset('assets/fb.jpg'),
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 35,
                            width: 35,
                            color: Colors.black,
                            child: Image.asset('assets/twitter.png',),
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 35,
                            width: 35,
                            color: Colors.black,
                            child: Image.asset('assets/linkdein.png',),
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 35,
                            width: 35,
                            color: Colors.black,
                            child: Image.asset('assets/utube.png',),
                          )
                        ],
                      ),
              SizedBox(height: 60,),
              Row(
                children: [
                  StatBox(number: "20+", label: "Years of Experience"),
                  SizedBox(width: 20),
                  GestureDetector(
                      onTap: (){
                      },
                      child: StatBox(number: "700+", label: "Global Clients")),
                  SizedBox(width: 20),
                  GestureDetector(
                      onTap: () {
                      },
                      child: StatBox(number: "30+", label: "Awards Won")),
                    ],
                  ),
]
                ),

            ),
            )
          ],
        ),
      ),
    );
  }
}
class StatBox extends StatelessWidget {
  final String number;
  final String label;

  const StatBox({super.key, required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(number,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }
}
