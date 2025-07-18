import 'package:flutter/material.dart';
import 'package:shopping/controller/text_component/text_component.dart';

class Page4Mobile extends StatelessWidget {
  const Page4Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SECTION HEADINGS
            CustomText(
              label: 'YEARS OF EXPERIENCE',
              size: TextSize.minismall,
              weight: FontWeight.w100,
              color: Colors.redAccent,
            ),
            const SizedBox(height: 8),
            CustomText(
              label: 'My Resume',
              size: TextSize.large,
              weight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 30),

            // Job Experience Section
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                label: 'Job Experience (2010 - 2022)',
                size: TextSize.medium,
                weight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const ResumeCard(
              title: "Bachelor Of Arts Website Design",
              subtitle: "University of Oxford (2010–2013)",
              description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odit maxime laborum saepe.",
            ),
            const SizedBox(height: 16),
            const ResumeCard(
              title: "Bachelor Of Arts Website Design",
              subtitle: "University of Oxford (2013–2016)",
              description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odit maxime laborum saepe.",
            ),
            const SizedBox(height: 16),
            const ResumeCard(
              title: "Bachelor Of Arts Website Design",
              subtitle: "University of Oxford (2016–2022)",
              description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odit maxime laborum saepe.",
            ),

            const SizedBox(height: 40),

            // Education Section
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                label: 'Education Quality (2010 - 2022)',
                size: TextSize.medium,
                weight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const ResumeCard(
              title: "Master Degree Of App Design",
              subtitle: "University of Design (2010–2013)",
              description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odit maxime laborum saepe.",
            ),
            const SizedBox(height: 16),
            const ResumeCard(
              title: "Master Degree Of App Design",
              subtitle: "University of Design (2013–2016)",
              description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odit maxime laborum saepe.",
            ),
            const SizedBox(height: 16),
            const ResumeCard(
              title: "Master Degree Of App Design",
              subtitle: "University of Design (2016–2022)",
              description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odit maxime laborum saepe.",
            ),
          ],
        ),
      ),
    );
  }
}

class ResumeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;

  const ResumeCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F1F),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(subtitle,
              style: const TextStyle(color: Colors.white60, fontSize: 12)),
          const SizedBox(height: 10),
          Text(description,
              style: const TextStyle(color: Colors.white70, fontSize: 13)),
        ],
      ),
    );
  }
}
