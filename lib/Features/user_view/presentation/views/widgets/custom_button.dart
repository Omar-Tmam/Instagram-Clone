import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.icon,
    this.title,
    this.onPressed,
  });

  final IconData? icon;
  final String? title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null)
            CustomText(
              title: title!,
              fontWeight: FontWeight.bold,
              fontSize: getResponsiveFontSize(context, fontSize: 15),
            ),
          if (icon != null) ...[
            if (title != null)
              Expanded(child: SizedBox()), // مسافة بين النص والأيقونة
            Icon(
              icon,
              color: Colors.white,
            ),
          ],
        ],
      ),
    );
  }
}
