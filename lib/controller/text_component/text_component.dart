import 'package:flutter/material.dart';

enum TextSize { small, medium, large, minismall, extralarge }

class CustomText extends StatelessWidget {
  final String label;
  final TextSize size;
  final FontWeight weight;
  final Color? color;

  const CustomText({
    super.key,
    required this.label,
    required this.size,
    this.color,
    required this.weight,
  });

  double _getFontSize(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool isMobile = screenWidth < 600;
    bool isDesktop = screenWidth >= 1024;

    if (isMobile) {
      switch (size) {
        case TextSize.minismall:
          return 12;
        case TextSize.small:
          return 14;
        case TextSize.medium:
          return 16;
        case TextSize.large:
          return 18;
        case TextSize.extralarge:
          return 20;
      }
    } else if (isDesktop) {
      switch (size) {
        case TextSize.minismall:
          return 14;
        case TextSize.small:
          return 16;
        case TextSize.medium:
          return 20;
        case TextSize.large:
          return 28;
        case TextSize.extralarge:
          return 46;
      }
    }

    return 16; // fallback
  }

  @override
  Widget build(BuildContext context) {
    double fontSize = _getFontSize(context);

    return Text(
      label,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: weight,
        color: color ?? Colors.black,
      ),
    );
  }
}
