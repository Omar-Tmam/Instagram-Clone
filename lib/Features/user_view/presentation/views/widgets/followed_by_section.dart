import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';

class FollowedBySection extends StatelessWidget {
  const FollowedBySection({
    super.key,
    required this.images,
    required this.followedByText,
  });

  final List<String> images;
  final String followedByText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: (images.length * 30.0) - 4,
          height: 40,
          child: Stack(
            children: [
              for (int i = 0; i < images.length; i++)
                Positioned(
                  left: i * 25.0,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                      images[i],
                    ),
                  ),
                )
            ],
          ),
        ),
        SizedBox(
          width: 4,
        ),
        CustomText(
          maxLines: 2,
          title: followedByText,
          fontSize: getResponsiveFontSize(context, fontSize: 14),
        )
      ],
    );
  }
}
