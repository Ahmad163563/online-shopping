import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping/controller/text_component/text_component.dart';

class Page1Mobile extends StatelessWidget {
  const Page1Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // NAVBAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    label: 'FORSTR',
                    weight: FontWeight.bold,
                    size: TextSize.medium,
                    color: Colors.red,
                  ),
                  PopupMenuButton<String>(
                    onSelected: (item) {
                      if (item == "SERVICES") context.go('/pg2');
                      if (item == "RESUME") context.go('/pg4');
                      if (item == "CONTACT") context.go('/pg7');
                    },
                    icon: Icon(Icons.menu, color: Colors.white),
                    itemBuilder: (context) => [
                      PopupMenuItem(value: "HOME", child: Text("HOME")),
                      PopupMenuItem(value: "SERVICES", child: Text("SERVICES")),
                      PopupMenuItem(value: "PORTFOLIO", child: Text("PORTFOLIO")),
                      PopupMenuItem(value: "RESUME", child: Text("RESUME")),
                      PopupMenuItem(value: "CONTACT", child: Text("CONTACT")),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),

              // IMAGE
              Center(
                child: Image.asset(
                  'assets/cartoon.jpg',
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 30),

              // TEXT CONTENT
              CustomText(
                  label: "Hello I'm",
                  size: TextSize.medium,
                  weight: FontWeight.w300,
                  color: Colors.white),
              const SizedBox(height: 8),
              CustomText(
                  label: 'Kthan Foster',
                  size: TextSize.large,
                  weight: FontWeight.bold,
                  color: Colors.white),
              const SizedBox(height: 10),
              CustomText(
                  label: 'Web Designer And Web Developer',
                  size: TextSize.medium,
                  weight: FontWeight.w500,
                  color: Colors.grey),
              const SizedBox(height: 20),
              CustomText(
                label:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                    "Massa porttitor pretium fusce venenatis. Tempus egostes sit ac aliquet.",
                size: TextSize.small,
                weight: FontWeight.w100,
                color: Colors.white60,
              ),
              const SizedBox(height: 20),

              // SOCIAL ICONS
              CustomText(
                  label: 'Find me on',
                  size: TextSize.medium,
                  weight: FontWeight.w400,
                  color: Colors.white),
              const SizedBox(height: 20),
              Wrap(
                spacing: 15,
                runSpacing: 15,
                alignment: WrapAlignment.center,
                children: [
                  socialIcon('assets/fb.jpg'),
                  socialIcon('assets/twitter.png'),
                  socialIcon('assets/linkdein.png'),
                  socialIcon('assets/utube.png'),
                ],
              ),
              const SizedBox(height: 40),

              // STATS
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StatBox(number: "20+", label: "Years of Experience"),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => context.go('/pg5'),
                    child: StatBox(number: "700+", label: "Global Clients"),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => context.go('/pg3'),
                    child: StatBox(number: "30+", label: "Awards Won"),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Download CV Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
                onPressed: () {},
                child: CustomText(
                  label: 'Download CV',
                  size: TextSize.small,
                  weight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialIcon(String path) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.black,
      child: Image.asset(path, fit: BoxFit.cover),
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
      children: [
        Text(
          number,
          style: const TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }
}
