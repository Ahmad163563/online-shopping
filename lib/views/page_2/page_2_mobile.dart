import 'package:flutter/material.dart';
import 'package:shopping/controller/text_component/text_component.dart';

class Page2Mobile extends StatelessWidget {
  const Page2Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                label: 'My Service',
                size: TextSize.minismall,
                weight: FontWeight.w100,
                color: Colors.redAccent,
              ),
              const SizedBox(height: 10),
              CustomText(
                label: 'What I do',
                size: TextSize.large,
                weight: FontWeight.bold,
                color: Colors.white,
              ),
              const SizedBox(height: 30),

              // Service Cards in Grid or List
              GridView.count(
                crossAxisCount: 1,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  ServiceCard(
                    icon: Icons.desktop_windows,
                    title: "Website Design",
                    description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae massa morbi",
                  ),
                  ServiceCard(
                    icon: Icons.storefront,
                    title: "App Development",
                    description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae massa morbi",
                  ),
                  ServiceCard(
                    icon: Icons.tv,
                    title: "Business Strategy",
                    description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae massa morbi",
                  ),
                  ServiceCard(
                    icon: Icons.desktop_windows,
                    title: "Website Design",
                    description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae massa morbi",
                  ),
                  ServiceCard(
                    icon: Icons.phone_iphone,
                    title: "App Development",
                    description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae massa morbi",
                  ),
                  ServiceCard(
                    icon: Icons.business_center,
                    title: "Business Strategy",
                    description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae massa morbi",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.redAccent, size: 30),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
