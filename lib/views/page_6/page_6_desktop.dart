import 'package:flutter/material.dart';

class Page6Desktop extends StatelessWidget {
  const Page6Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "BEST CUSTOMERS",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 13,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Selected Clients",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),

            // GridView for logos
            GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 2.5, // wider to support row layout
              children: const [
                ClientLogoCard(imagePath: 'assets/circle.jpeg', text: 'goldline'),
                ClientLogoCard(imagePath: 'assets/ball.webp', text: 'Venture'),
                ClientLogoCard(imagePath: 'assets/ciiiircle.png', text: 'Circle'),
                ClientLogoCard( text: 'Velocity',imagePath: 'assets/nine.jpg',),
                ClientLogoCard(imagePath: '', text: 'Utosia'),
                ClientLogoCard(imagePath: '', text: 'Ztos'),
                ClientLogoCard(imagePath: 'assets/vertical.png', text: 'Asgardia'),
                ClientLogoCard(imagePath: 'assets/rocket.jpg', text: 'Treva'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ClientLogoCard extends StatelessWidget {
  final String text;
  final String imagePath;

  const ClientLogoCard({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath.isNotEmpty) ...[
              Image.asset(
                imagePath,
                height: 40,
                width: 40,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 12),
            ],
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
