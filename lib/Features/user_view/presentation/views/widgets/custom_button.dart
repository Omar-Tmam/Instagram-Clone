import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';

class UserPageButton extends StatelessWidget {
  final String? title;
  final Icon? icon;

  const UserPageButton({super.key, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: Colors.transparent,
        side: BorderSide(color: Colors.white, width: 1),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title ?? "",
            style: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          if (icon != null) icon!,
        ],
      ),
    );
  }
}
