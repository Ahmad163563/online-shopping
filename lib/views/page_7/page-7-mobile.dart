import 'package:flutter/material.dart';

class Page7Mobile extends StatelessWidget {
  final _inputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.black54,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    hintStyle: const TextStyle(color: Colors.white70),
  );

  Page7Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Contact Info Boxes
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2.8,
              children: [
                contactBox(Icons.map_outlined, "382 Waldo Ave SE\nSalem, Oregon"),
                contactBox(Icons.phone, "932-415-832-938"),
                contactBox(Icons.email, "animal@example.com"),
                contactBox(Icons.check_circle, "Freelance Available"),
              ],
            ),
            const SizedBox(height: 30),

            const Text(
              "Contact With Me",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),

            // Name and Phone
            TextField(
              decoration: _inputDecoration.copyWith(hintText: "Enter Your Name"),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 15),
            TextField(
              decoration: _inputDecoration.copyWith(hintText: "Enter Your Phone"),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 15),

            // Email and Subject
            TextField(
              decoration: _inputDecoration.copyWith(hintText: "Enter Your Email"),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 15),
            TextField(
              decoration: _inputDecoration.copyWith(hintText: "Enter Your Subject"),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 15),

            // Message
            TextField(
              maxLines: 6,
              decoration: _inputDecoration.copyWith(hintText: "Type Your Message"),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),

            // Send Button
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text("Send Message"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[800],
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget contactBox(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.redAccent, size: 30),
          const SizedBox(height: 6),
          Text(
            text,
            style: const TextStyle(color: Colors.white70, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
