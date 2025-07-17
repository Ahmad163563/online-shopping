import 'package:flutter/material.dart';
import 'package:shopping/controller/text_component/text_component.dart';

class Page1Desktop extends StatelessWidget {
   Page1Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Column(
        children: [
          // NAVBAR
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(label: 'FORSTR', weight: FontWeight.bold, size: TextSize.medium, color: Colors.red,),
                Row(
                  children: ["HOME", "SERVICES", "PORTFOLIO", "RESUME", "CONTACT"]
                      .map((item) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomText(label: item, weight: FontWeight.w400,color: Colors.white,size: TextSize.small,)
                  ))
                      .toList(),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: CustomText(label: 'Download CV', size: TextSize.small, weight: FontWeight.w100,color: Colors.white,)
                )
              ],
            ),
          ),

          // HERO SECTION
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Row(
                children: [
                  // LEFT SIDE
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(label: "Hello I'm", size: TextSize.medium, weight: FontWeight.w300,color: Colors.white,),
                           SizedBox(height: 8),
                           CustomText(label: 'Kthan Foster', size: TextSize.extralarge, weight: FontWeight.bold,color: Colors.white,),
                           SizedBox(height: 10),
                           CustomText(label: 'Web Designer And Web Developer', size: TextSize.medium, weight: FontWeight.w500,color: Colors.grey,),
                           SizedBox(height: 20),
                           CustomText(label: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                           "Massa porttitor pretium\n"
                               "fusce venenatis. Tempus egostes sit ac aliquet. Gravida fermentum quis ut\n"
                               "pellentus queporta facios aliquet. Sed torpur sendis", size: TextSize.small, weight: FontWeight.w100,color: Colors.white60,),
                          SizedBox(height: 20,),

                          CustomText(label: 'Find me on', size: TextSize.medium, weight: FontWeight.w400,color: Colors.white,),
                           SizedBox(height: 20),
                          Row(
                            children:[
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.black,
                                child: Image.asset('assets/fb.jpg'),
                              ),
                              SizedBox(width: 15),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.black,
                                child: Image.asset('assets/twitter.png',),
                              ),
                              SizedBox(width: 15),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.black,
                                child: Image.asset('assets/linkdein.png',),
                              ),
                              SizedBox(width: 15),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.black,
                                child: Image.asset('assets/utube.png',),
                              )
                            ],
                          ),
                           SizedBox(height: 55),
                          Row(
                            children: const [
                              StatBox(number: "20+", label: "Years of Experience"),
                              SizedBox(width: 20),
                              StatBox(number: "700+", label: "Global Clients"),
                              SizedBox(width: 20),
                              StatBox(number: "30+", label: "Awards Won"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // RIGHT SIDE - IMAGE
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Image.asset(
                        'assets/amd.jpg',height: 400,
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
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
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }
}