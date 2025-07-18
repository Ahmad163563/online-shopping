import 'package:flutter/material.dart';
import 'package:shopping/controller/text_component/text_component.dart';

class Page3Mobile extends StatelessWidget {
  const Page3Mobile({super.key});

  final List<String> images = const [
    'assets/flower.webp',
    'assets/coco.jpg',
    'assets/triangle.jpeg',
    'assets/leaf.jpeg',
    'assets/breath.jpeg',
    'assets/chewgum.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B1B),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              label: 'AWARD WINNING WORK',
              size: TextSize.minismall,
              weight: FontWeight.w100,
              color: Colors.redAccent,
            ),
            const SizedBox(height: 8),
            CustomText(
              label: 'Recent Works',
              size: TextSize.large,
              weight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 30),

            // Grid for Images
            GridView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2-column grid for mobile
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),

            const SizedBox(height: 30),

            // View All Works Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "View All Works",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
