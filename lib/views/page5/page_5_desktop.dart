import 'package:flutter/material.dart';

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
            Text(
              "TESTIMONIALS",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 13,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
             Row(
               children: [
                 Text(
                  "What Clients Say",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                 ),
                 Spacer(),
                 Container(
                   color: Colors.grey,
                   child: Icon(Icons.arrow_forward,color: Colors.white,),
                 )
               ],
             ),
             SizedBox(height: 40),

            // Testimonials Row
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
    return Container(
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

          const Text(
            "Aliquam cursus nunc mauris, nec congue tortor pretium et. Pellentesque feugiat justo in metus laoreet.",
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),

          const SizedBox(height: 20),

          // Client info
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/100?img=7'), // sample avatar
                radius: 20,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Sam Freeman",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  Text("Business Manager And CEO",
                      style: TextStyle(color: Colors.white60, fontSize: 12)),
                ],
              )
            ],
          )
        ],
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
