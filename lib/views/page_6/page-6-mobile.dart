import 'package:flutter/material.dart';

class Page6Mobile extends StatelessWidget {
  const Page6Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
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
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),

            // Grid View for mobile - 2 columns
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 2.5,
              children: const [
                ClientLogoCard(imagePath: 'assets/circle.jpeg', text: 'goldline'),
                ClientLogoCard(imagePath: 'assets/ball.webp', text: 'Venture'),
                ClientLogoCard(imagePath: 'assets/ciiiircle.png', text: 'Circle'),
                ClientLogoCard(imagePath: 'assets/nine.jpg', text: 'Velocity'),
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

  const ClientLogoCard({
    super.key,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imagePath.isNotEmpty) ...[
            Image.asset(
              imagePath,
              height: 30,
              width: 30,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 10),
          ],
          Flexible(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
