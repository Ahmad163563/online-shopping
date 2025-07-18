import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping/controller/text_component/text_component.dart';

class Page5Mobile extends StatelessWidget {
  const Page5Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Heading
            CustomText(
              label: 'TESTIMONIALS',
              size: TextSize.small,
              weight: FontWeight.w100,
              color: Colors.redAccent,
            ),
            const SizedBox(height: 10),
            CustomText(
              label: 'What Clients Say',
              size: TextSize.large,
              weight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 20),

            // Testimonial Cards vertically stacked
            const TestimonialCard(),
            const SizedBox(height: 20),
            const TestimonialCard(),
            const SizedBox(height: 20),
            const TestimonialCard(),

            const SizedBox(height: 30),

            // Dot Indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Dot(),
                Dot(isActive: true),
                Dot(),
              ],
            ),

            const SizedBox(height: 20),

            // Optional Navigation Buttons (can hide on small screens)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                navButton(Icons.arrow_back),
                const SizedBox(width: 10),
                navButton(Icons.arrow_forward),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget navButton(IconData icon) {
    return Container(
      height: 40,
      width: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/pg6');
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Quote and Rating
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

            // Testimonial Text
            CustomText(
              label:
              'Aliquam cursus nunc mauris, nec congue tortor pretium et. Pellentesque feugiat justo in metus laoreet.',
              size: TextSize.small,
              weight: FontWeight.w100,
              color: Colors.white70,
            ),

            const SizedBox(height: 20),

            // Client Info
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/click in lake.jpg'),
                  radius: 20,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CustomText(
                      label: 'Sam Freeman',
                      size: TextSize.small,
                      weight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    Text(
                      "Business Manager And CEO",
                      style: TextStyle(color: Colors.white60, fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
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
