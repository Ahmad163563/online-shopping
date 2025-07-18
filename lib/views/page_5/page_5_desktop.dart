import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping/controller/text_component/text_component.dart';

class Page5Desktop extends StatelessWidget {
  const Page5Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(label: 'TESTIMONIALS', size: TextSize.small, weight: FontWeight.w100,color: Colors.redAccent,),
            SizedBox(height: 10),
             Row(
               children: [
                 CustomText(label: 'What Clients Say', size: TextSize.large, weight: FontWeight.bold,color: Colors.white,),
                 Spacer(),
                 Container(
                   height: 40,
                   width: 50,
                   color: Color(0xFF1E1E1E),
                   child: Icon(Icons.arrow_back,color: Colors.white,),
                 ),
                 SizedBox(width: 12,),
                 Container(
                   height: 40,
                   width: 50,
                   color: Color(0xFF1E1E1E),
                   child: Icon(Icons.arrow_forward,color: Colors.white,),
                 )
               ],
             ),
             SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: TestimonialCard()),
                SizedBox(width: 20),
                Expanded(child: TestimonialCard()),
                SizedBox(width: 20),
                Expanded(child: TestimonialCard()),
              ],
            ),

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Dot(),
                Dot(),
                Dot(isActive: true,),
                Dot(),
                Dot(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.go('/pg6');
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Quote + Rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.format_quote, color: Colors.pinkAccent, size: 30),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star, color: Colors.amber, size: 20),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),

            CustomText(label: 'Aliquam cursus nunc mauris, nec congue tortor pretium et. Pellentesque feugiat justo in metus laoreet.', size: TextSize.small, weight: FontWeight.w100,color: Colors.white70,),
            SizedBox(height: 20),
            Row(
              children: [
                 CircleAvatar(
                  backgroundImage: AssetImage('assets/click in lake.jpg'),
                  radius: 20,
                ),
                 SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(label: 'Sam Freeman', size: TextSize.small, weight: FontWeight.bold,color: Colors.white,),
                    Text("Business Manager And CEO",
                        style: TextStyle(color: Colors.white60, fontSize: 12)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final bool isActive;

  const Dot({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 12 : 8,
      height: isActive ? 12 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.redAccent : Colors.grey,
      ),
    );
  }
}
