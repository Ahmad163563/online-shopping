import 'package:flutter/material.dart';
import 'package:shopping/controller/text_component/text_component.dart';

class Page3Desktop extends StatelessWidget {
  const Page3Desktop({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(label: 'AWARD WINNING WORK', size: TextSize.minismall, weight: FontWeight.w100,color: Colors.redAccent,),
            SizedBox(height: 8),
            CustomText(label: 'Recent Works', size: TextSize.large, weight: FontWeight.bold,color: Colors.white,),
             SizedBox(height: 40),
            GridView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.8,
              ),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
                padding:
                EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
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