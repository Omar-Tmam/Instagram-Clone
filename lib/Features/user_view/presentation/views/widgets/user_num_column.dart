import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';

class UserNumColumn extends StatelessWidget {
  const UserNumColumn({
    super.key,
    required this.numbers,
    required this.title,
  });

  final String numbers;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          title: numbers.toString(),
          fontSize: getResponsiveFontSize(context, fontSize: 20),
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          title: title,
          fontSize: getResponsiveFontSize(context, fontSize: 14),
        )
      ],
    );
  }
}
